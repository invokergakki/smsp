package com.syn.smsp.constant;

public class Constant {

    /** 超级管理员ID */
    public static final int SUPER_ADMIN = 1;

    public static String system_name = "物联网消防管理平台";

    public static String appkey = "23830519";
    public static String secret = "98651da209a9fea6c374eb30a04e0212";

    public enum MenuType {
        /**
         * 目录
         */
        CATALOG(0),
        /**
         * 菜单
         */
        MENU(1),
        /**
         * 按钮
         */
        BUTTON(2);

        private int value;

        private MenuType(int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }
    public static String error_code = "-1";
    public static String defeat_code = "0";
    public static String success_code = "200";

    public static int streamSize = 1024;

    public static String session_key = "userSession";
   //超级管理员
    public static Long super_admin = 1L;
}