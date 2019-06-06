/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/70-82/Univesal_Shift_Register/Receiver.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};



static void Always_30_0(char *t0)
{
    char t9[8];
    char t10[8];
    char t20[16];
    char t29[8];
    char t46[8];
    char t55[8];
    char t72[8];
    char t81[8];
    char t98[8];
    char t107[8];
    char t124[8];
    char t133[8];
    char t150[8];
    char t159[8];
    char t176[8];
    char t185[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    char *t123;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t147;
    char *t148;
    char *t149;
    char *t151;
    char *t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    char *t164;
    char *t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;
    char *t174;
    char *t175;
    char *t177;
    char *t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t189;
    char *t190;
    char *t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    char *t199;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t7 = (t9 + 4);
    t8 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 0);
    t17 = (t16 & 1);
    *((unsigned int *)t7) = t17;
    t11 = (t0 + 1768);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    memset(t10, 0, 8);
    t21 = (t10 + 4);
    t22 = (t19 + 4);
    t23 = *((unsigned int *)t19);
    t24 = (t23 >> 1);
    t25 = (t24 & 1);
    *((unsigned int *)t10) = t25;
    t26 = *((unsigned int *)t22);
    t27 = (t26 >> 1);
    t28 = (t27 & 1);
    *((unsigned int *)t21) = t28;
    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t10);
    t32 = (t30 ^ t31);
    *((unsigned int *)t29) = t32;
    t33 = (t9 + 4);
    t34 = (t10 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB17;

LAB18:
LAB19:    t43 = (t0 + 1768);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t46, 0, 8);
    t47 = (t46 + 4);
    t48 = (t45 + 4);
    t49 = *((unsigned int *)t45);
    t50 = (t49 >> 2);
    t51 = (t50 & 1);
    *((unsigned int *)t46) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 >> 2);
    t54 = (t53 & 1);
    *((unsigned int *)t47) = t54;
    t56 = *((unsigned int *)t29);
    t57 = *((unsigned int *)t46);
    t58 = (t56 ^ t57);
    *((unsigned int *)t55) = t58;
    t59 = (t29 + 4);
    t60 = (t46 + 4);
    t61 = (t55 + 4);
    t62 = *((unsigned int *)t59);
    t63 = *((unsigned int *)t60);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 != 0);
    if (t66 == 1)
        goto LAB20;

LAB21:
LAB22:    t69 = (t0 + 1768);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    memset(t72, 0, 8);
    t73 = (t72 + 4);
    t74 = (t71 + 4);
    t75 = *((unsigned int *)t71);
    t76 = (t75 >> 3);
    t77 = (t76 & 1);
    *((unsigned int *)t72) = t77;
    t78 = *((unsigned int *)t74);
    t79 = (t78 >> 3);
    t80 = (t79 & 1);
    *((unsigned int *)t73) = t80;
    t82 = *((unsigned int *)t55);
    t83 = *((unsigned int *)t72);
    t84 = (t82 ^ t83);
    *((unsigned int *)t81) = t84;
    t85 = (t55 + 4);
    t86 = (t72 + 4);
    t87 = (t81 + 4);
    t88 = *((unsigned int *)t85);
    t89 = *((unsigned int *)t86);
    t90 = (t88 | t89);
    *((unsigned int *)t87) = t90;
    t91 = *((unsigned int *)t87);
    t92 = (t91 != 0);
    if (t92 == 1)
        goto LAB23;

LAB24:
LAB25:    t95 = (t0 + 1768);
    t96 = (t95 + 56U);
    t97 = *((char **)t96);
    memset(t98, 0, 8);
    t99 = (t98 + 4);
    t100 = (t97 + 4);
    t101 = *((unsigned int *)t97);
    t102 = (t101 >> 4);
    t103 = (t102 & 1);
    *((unsigned int *)t98) = t103;
    t104 = *((unsigned int *)t100);
    t105 = (t104 >> 4);
    t106 = (t105 & 1);
    *((unsigned int *)t99) = t106;
    t108 = *((unsigned int *)t81);
    t109 = *((unsigned int *)t98);
    t110 = (t108 ^ t109);
    *((unsigned int *)t107) = t110;
    t111 = (t81 + 4);
    t112 = (t98 + 4);
    t113 = (t107 + 4);
    t114 = *((unsigned int *)t111);
    t115 = *((unsigned int *)t112);
    t116 = (t114 | t115);
    *((unsigned int *)t113) = t116;
    t117 = *((unsigned int *)t113);
    t118 = (t117 != 0);
    if (t118 == 1)
        goto LAB26;

LAB27:
LAB28:    t121 = (t0 + 1768);
    t122 = (t121 + 56U);
    t123 = *((char **)t122);
    memset(t124, 0, 8);
    t125 = (t124 + 4);
    t126 = (t123 + 4);
    t127 = *((unsigned int *)t123);
    t128 = (t127 >> 5);
    t129 = (t128 & 1);
    *((unsigned int *)t124) = t129;
    t130 = *((unsigned int *)t126);
    t131 = (t130 >> 5);
    t132 = (t131 & 1);
    *((unsigned int *)t125) = t132;
    t134 = *((unsigned int *)t107);
    t135 = *((unsigned int *)t124);
    t136 = (t134 ^ t135);
    *((unsigned int *)t133) = t136;
    t137 = (t107 + 4);
    t138 = (t124 + 4);
    t139 = (t133 + 4);
    t140 = *((unsigned int *)t137);
    t141 = *((unsigned int *)t138);
    t142 = (t140 | t141);
    *((unsigned int *)t139) = t142;
    t143 = *((unsigned int *)t139);
    t144 = (t143 != 0);
    if (t144 == 1)
        goto LAB29;

LAB30:
LAB31:    t147 = (t0 + 1768);
    t148 = (t147 + 56U);
    t149 = *((char **)t148);
    memset(t150, 0, 8);
    t151 = (t150 + 4);
    t152 = (t149 + 4);
    t153 = *((unsigned int *)t149);
    t154 = (t153 >> 6);
    t155 = (t154 & 1);
    *((unsigned int *)t150) = t155;
    t156 = *((unsigned int *)t152);
    t157 = (t156 >> 6);
    t158 = (t157 & 1);
    *((unsigned int *)t151) = t158;
    t160 = *((unsigned int *)t133);
    t161 = *((unsigned int *)t150);
    t162 = (t160 ^ t161);
    *((unsigned int *)t159) = t162;
    t163 = (t133 + 4);
    t164 = (t150 + 4);
    t165 = (t159 + 4);
    t166 = *((unsigned int *)t163);
    t167 = *((unsigned int *)t164);
    t168 = (t166 | t167);
    *((unsigned int *)t165) = t168;
    t169 = *((unsigned int *)t165);
    t170 = (t169 != 0);
    if (t170 == 1)
        goto LAB32;

LAB33:
LAB34:    t173 = (t0 + 1768);
    t174 = (t173 + 56U);
    t175 = *((char **)t174);
    memset(t176, 0, 8);
    t177 = (t176 + 4);
    t178 = (t175 + 4);
    t179 = *((unsigned int *)t175);
    t180 = (t179 >> 7);
    t181 = (t180 & 1);
    *((unsigned int *)t176) = t181;
    t182 = *((unsigned int *)t178);
    t183 = (t182 >> 7);
    t184 = (t183 & 1);
    *((unsigned int *)t177) = t184;
    t186 = *((unsigned int *)t159);
    t187 = *((unsigned int *)t176);
    t188 = (t186 ^ t187);
    *((unsigned int *)t185) = t188;
    t189 = (t159 + 4);
    t190 = (t176 + 4);
    t191 = (t185 + 4);
    t192 = *((unsigned int *)t189);
    t193 = *((unsigned int *)t190);
    t194 = (t192 | t193);
    *((unsigned int *)t191) = t194;
    t195 = *((unsigned int *)t191);
    t196 = (t195 != 0);
    if (t196 == 1)
        goto LAB35;

LAB36:
LAB37:    t199 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t199, t185, 0, 0, 1, 0LL);
    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 8, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t8 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 8, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(37, ng0);

LAB16:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    memset(t10, 0, 8);
    t8 = (t10 + 4);
    t11 = (t7 + 4);
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 1);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t11);
    t15 = (t14 >> 1);
    *((unsigned int *)t8) = t15;
    t16 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t16 & 127U);
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 127U);
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    xsi_vlogtype_concat(t9, 8, 8, 2U, t19, 1, t10, 7);
    t18 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 8, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    t11 = (t9 + 4);
    t18 = (t8 + 4);
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 0);
    *((unsigned int *)t9) = t13;
    t14 = *((unsigned int *)t18);
    t15 = (t14 >> 0);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 127U);
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 127U);
    xsi_vlogtype_concat(t20, 39, 39, 2U, t9, 7, t3, 32);
    t19 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t19, t20, 0, 0, 8, 0LL);
    goto LAB15;

LAB17:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    goto LAB19;

LAB20:    t67 = *((unsigned int *)t55);
    t68 = *((unsigned int *)t61);
    *((unsigned int *)t55) = (t67 | t68);
    goto LAB22;

LAB23:    t93 = *((unsigned int *)t81);
    t94 = *((unsigned int *)t87);
    *((unsigned int *)t81) = (t93 | t94);
    goto LAB25;

LAB26:    t119 = *((unsigned int *)t107);
    t120 = *((unsigned int *)t113);
    *((unsigned int *)t107) = (t119 | t120);
    goto LAB28;

LAB29:    t145 = *((unsigned int *)t133);
    t146 = *((unsigned int *)t139);
    *((unsigned int *)t133) = (t145 | t146);
    goto LAB31;

LAB32:    t171 = *((unsigned int *)t159);
    t172 = *((unsigned int *)t165);
    *((unsigned int *)t159) = (t171 | t172);
    goto LAB34;

LAB35:    t197 = *((unsigned int *)t185);
    t198 = *((unsigned int *)t191);
    *((unsigned int *)t185) = (t197 | t198);
    goto LAB37;

}


extern void work_m_00000000000658086870_1913203228_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000000658086870_1913203228", "isim/Transmitter_Receiver_isim_beh.exe.sim/work/m_00000000000658086870_1913203228.didat");
	xsi_register_executes(pe);
}
