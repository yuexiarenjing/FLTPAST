import java.util.List;
import java.io.*;
import java.util.ArrayList;

public class MWSCP {

    public static String fun_block_path = "input/xalan/fun_blocks.txt";
    public static String fun_weight_path = "input/xalan/fun_weight.txt";
    public static String untrace_functions_path = "output/xalan/untrace_functions";
    public static String trace_functions_path = "output/xalan/trace_functions";

    public static double P = 0.5;

    public static String[] fun_lst;  // 函数数组
    public static double[] weight_lst;  // 权重数组
    public static List[] block_lst;  // 基本块List数组
    public static int N_fun;  // 函数的数量
    public static int N_block;  // 基本块的数量
    public static int total_weight_up_bound;  // = 26000;  // 权值之和的上限

    public static int N_ant = 10;  // 蚂蚁总数量
    public static int N_t = 200;  // 迭代轮数
    public static double a = 5;  // 信息素重要度
    public static double b = 2;  // 启发信息重要度
    public static double p = 0.3;  // 信息素挥发因子
    public static double g = 4;  // 信息素的下限因子
    public static double[] tau;  // 初始信息素量
    public static double tau_max = 6;  // 信息素上限
    public static double tau_min = tau_max/g;  // 信息素下限
    public static double eta_max = 2;  // 启发信息的最大值，当对应的代价为0时启发信息取该值
    public static double Q = 100;  // 信息素总量

    //
    // 数据初始化
    //

    // 初始化函数值为value(int)
    public static void init_int_array(int[] array, int value) {
        for (int i = 0; i < array.length; i++) {
            array[i] = value;
        }
    }

    // 初始化函数值为value(double)
    public static void init_double_array(double[] array, double value) {
        for (int i = 0; i < array.length; i++) {
            array[i] = value;
        }
    }

    // 判断字符串是否在List当中
    public static Boolean in_list(List list, String str) {
        Boolean in_flag = false;
        for(int i = 0; i < list.size(); i++)
        {
            if (str.equals( (String)list.get(i) ))
            {
                in_flag = true;
            }
        }
        return in_flag;
    }

    // 输入信息初始化
    public static void init() {
        try {
            BufferedReader in = new BufferedReader(new FileReader(fun_weight_path));
            String str;
            List function_list = new ArrayList();
            List weight_list = new ArrayList();
            while ((str = in.readLine()) != null) {
                String[] array = str.split(",");
                function_list.add(array[0]);
                weight_list.add(Double.valueOf(array[1]));
            }
            fun_lst = new String[function_list.size()];
            weight_lst = new double[weight_list.size()];
            for(int i = 0; i < function_list.size(); i++)
            {
                fun_lst[i] = (String)function_list.get(i);
                weight_lst[i] = (double)weight_list.get(i);
            }
            int total_weight = 0;
            for (int i = 0; i < weight_lst.length; i++) {
                total_weight += weight_lst[i];
            }
            total_weight_up_bound = (int)(total_weight * P);
        } catch (IOException e) {
            e.printStackTrace();
        }

        List blocks = new ArrayList();
        try {
            BufferedReader in = new BufferedReader(new FileReader(fun_block_path));
            String str;
            List blocks_list = new ArrayList();
            while ((str = in.readLine()) != null) {
                List b_list = new ArrayList();
                String[] array = str.split(",");
                for (int i = 1; i < array.length; i++) {
                    b_list.add(array[i]);
                    if ( !in_list(blocks, array[i]) ) {
                        blocks.add(array[i]);
                    }
                }
                blocks_list.add(b_list);
            }
            block_lst = new List[blocks_list.size()];
            for(int i = 0; i < blocks_list.size(); i++)
            {
                block_lst[i] = (List)blocks_list.get(i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 初始化MMAS信息
        N_fun = fun_lst.length;
        N_block = blocks.size();
        tau = new double[N_fun];
        init_double_array(tau,3);
    }

    //
    // MMAS关键函数
    //

    // 获取启发信息
    public static double get_eta(int j) {
        if (weight_lst[j] != 0) {
            return 1/ weight_lst[j];
        } else {
            return eta_max;
        }
    }

    // 获取x_best方案下所有被覆盖的基本块数量
    public static int g(int[] x_best) {
        List blocks_covered = new ArrayList();
        for (int j = 0; j < N_fun; j++) {
            if (x_best[j] == 1) {  // 被选择的函数
                List blocks = block_lst[j];  // 被选择函数所覆盖的基本块列表
                for (int i = 0; i < blocks.size(); i++) {
                    if ( !in_list(blocks_covered, (String)blocks.get(i)) ) {
                        blocks_covered.add( (String)blocks.get(i) );
                    }
                }
            }
        }
        return  blocks_covered.size();
    }

    // 获取信息素增量
    public static double get_tau_delta(int j, int[] x_best, double g_x_best) {
        double tau_delta = 0;
        if ( x_best[j] == 1 ) {  // 一次迭代后得到的最佳方案中被选择的函数
            tau_delta = Q * g_x_best / ( tau[j] * N_block );
        }
        return  tau_delta;
    }

    // 更新信息素
    public static void update_tau(int[] x_best) {  // 使用本次迭代的最佳方案更新信息素
        double g_x_best = g(x_best);
        double tau_update;
        for (int j = 0; j < N_fun; j++) {
            tau_update = (1-p) * tau[j] + get_tau_delta(j, x_best, g_x_best);
            if (tau_update < tau_min) {  // 信息素越界判断
                tau_update = tau_min;
            }
            if (tau_update > tau_max) {
                tau_update = tau_max;
            }
            tau[j] = tau_update;  // 更新信息素
        }
    }

    public static double tau_multi_eta(int j) {
        return Math.pow(tau[j], a) * Math.pow(get_eta(j), b);
    }

    // 计算选择Fj后的总权重
    public static double get_total_weight_plus(int[] allowed, int j) {
        double cur_total_weight = 0;
        for (int jj = 0; jj < N_fun; jj++) {
            if (allowed[jj] == 0) {  // 已选择的函数
                cur_total_weight += weight_lst[jj];
            }
        }
        return cur_total_weight + weight_lst[j];
    }

    // 计算选择当前方案的总权重
    public static double get_total_weight(int[] allowed) {
        double cur_total_weight = 0;
        for (int jj = 0; jj < N_fun; jj++) {
            if (allowed[jj] == 0) {  // 已选择的函数
                cur_total_weight += weight_lst[jj];
            }
        }
        return cur_total_weight;
    }

    // 轮盘赌选择函数，返回false表示已经无法继续选择（达到权重上限约束）
    public static Boolean roulette(int[] allowed) {
        double r = Math.random();  // 产生0~1之之间的一个浮点数
        double sum = 0;
        double culmulated_P = 0;
        double probability;
        for (int jj = 0; jj < N_fun; jj++) {
            if (allowed[jj] == 1) {  // allowed
                sum += tau_multi_eta(jj);
            }
        }
        for (int jj = 0; jj < N_fun; jj++) {
            if (allowed[jj] == 1) {  // allowed
                probability = tau_multi_eta(jj) / sum;
                culmulated_P += probability;
                if (culmulated_P >= r) {  // select
                    if (get_total_weight_plus(allowed, jj) <= total_weight_up_bound) {
                        allowed[jj] = 0;  // mark as not allowed
                        return true;
                    } else {
                        return false;
                    }
                }
            }
        }
        System.out.println("unreach point.");
        return false;
    }

    // 根据允许向量获取函数选择向量(x)
    public static int[] get_solution(int[] allowed) {
        int[] solution = new int[N_fun];
        for (int j = 0; j < N_fun; j++) {
            if (allowed[j] == 0) {
                solution[j] = 1;
            } else {
                solution[j] = 0;
            }
        }
        return solution;
    }

    // 获取所有方案中最好的方案(x,num_cover_blocks,total_weight)，覆盖最多的基本块
    public static List get_solution_best(List solution_lst) {
        List ret = new ArrayList();
        if (solution_lst.size() < 1) {
            return null;
        }
        ret = (List)solution_lst.get(0);
        for (int k = 1; k < solution_lst.size(); k++) {
            if ( (int)((List)solution_lst.get(k)).get(1) > (int)ret.get(1)) {  // 比较方案覆盖的基本块数量
                ret = (List) solution_lst.get(k);
            }
        }
        return ret;
    }

    public static double get_fitness(int covered_blocks_num, double w_total) {
        double sigma1 = N_block/(double)(N_block+1);
        double sigma2 = 1/(double)(N_block+1);
        double part1 = sigma1 * (1-covered_blocks_num/(double)N_block);
        double part2 = sigma2 * w_total / total_weight_up_bound;
//        System.out.println(full_covered_blocks_num + " " + covered_blocks_num + " " + N_block);
        return part1 + part2;
    }

    // 运行MMAX解决MWSCP问题
    public static int[] run_MMAX() {
        List global_solution_best;
        List global_solution_lst = new ArrayList();
        double tmp = 0;
        int t_count = 0;
        for (int t = 0; t < N_t; t++) {  // 迭代轮数编号
            List solution_best;
            int[] x_best;
            List solution_lst = new ArrayList();
            for (int h = 0; h < N_ant; h++) {  // 蚂蚁编号
                int[] solution;
                double total_weight;
                int num_cover_block;
                List res = new ArrayList();
                int[] allowed = new int[N_fun];  // 为该蚂蚁初始化allowed
                init_int_array(allowed, 1);
                Boolean end_flag = roulette(allowed);
                while (end_flag) {  // 轮盘赌，选择一个函数，直到函数返回Flase即权值之和达到上限
                    end_flag = roulette(allowed);
                }
                solution = get_solution(allowed);  // 获取蚂蚁h得到的解决方案
                total_weight = get_total_weight(allowed);
                num_cover_block = g(solution);
                res.add(solution);
                res.add(num_cover_block);
                res.add(total_weight);
                solution_lst.add(res);
//                System.out.println("\tant:" + h + ", num_cover_block:" + num_cover_block + ", total_weight:" + total_weight);
            }
            // N_ant 个蚂蚁活动结束后
            solution_best = get_solution_best(solution_lst);
            global_solution_lst.add(solution_best);
            x_best = (int[])solution_best.get(0);
            update_tau(x_best);  // 更新信息素
            double fitness = (int)solution_best.get(1)/(double)N_block;
            if(Math.abs(tmp - fitness) < 0.0001) {
                t_count += 1;
                if(t_count >=3) {
                    break;
                }
            } else {
                tmp = fitness;
                t_count = 0;
            }

            System.out.println("iter:" + t + ", num_cover_block:" + (int)solution_best.get(1)/(double)N_block + ", total_weight:" + (double)solution_best.get(2) + ", fitness_value:" + get_fitness((int)solution_best.get(1), (double)solution_best.get(2)));
        }
        global_solution_best = get_solution_best(global_solution_lst);
        System.out.println("global_solution_best, num_cover_block:" + (int)global_solution_best.get(1)/(double)N_block + ", total_weight:" + (double)global_solution_best.get(2));
        return (int[])global_solution_best.get(0);  // 函数选择向量，1表示选择，0表示不选择，对应函数存储在fun_lst
    }

    public static void create_untrace_file(int[] x) {
        try {
            BufferedWriter out = new BufferedWriter(new FileWriter(untrace_functions_path + "-" + String.valueOf(P)));
            for (int j = 0; j < x.length; j++) {
                if (x[j] == 0) {  // untrace function
                    out.write(fun_lst[j] + "\n");
                }
            }
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void create_trace_file(int[] x) {
        try {
            BufferedWriter out = new BufferedWriter(new FileWriter(trace_functions_path  + "-" + String.valueOf(P)));
            for (int j = 0; j < x.length; j++) {
                if (x[j] == 1) {  // trace function
                    out.write(fun_lst[j] + "\n");
                }
            }
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Runtime r = Runtime.getRuntime();
        r.gc();//计算内存前先垃圾回收一次
        long start = System.currentTimeMillis();//开始Time
        long startMem = r.totalMemory(); // 开始Memory

        int[] x;
        init();
        x = run_MMAX();
        create_untrace_file(x);
        create_trace_file(x);

        long endMem =r.freeMemory(); // 末尾Memory
        long end = System.currentTimeMillis();//末尾Time
        //输出
        System.out.println("用时消耗: "+String.valueOf(end - start)+"ms");
        System.out.println("内存消耗: "+String.valueOf((startMem- endMem)/1024)+"KB");
    }
}

