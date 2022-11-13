package com.duing.util;

import com.google.gson.Gson;

public class GsonUtil {

    public static void main(String[] args) {
        int[][] seat = new int[10][10];
        String jsonStr = new Gson().toJson(seat);
        System.out.println();
    }
}
