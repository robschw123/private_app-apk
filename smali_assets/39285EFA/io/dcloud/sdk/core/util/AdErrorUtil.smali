.class public Lio/dcloud/sdk/core/util/AdErrorUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->c()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x13ec

    if-eq p0, v1, :cond_4

    packed-switch p0, :pswitch_data_0

    const-string v1, ""

    packed-switch p0, :pswitch_data_1

    const/16 v2, -0x25b

    if-eq p0, v2, :cond_3

    const v2, 0x30d40

    if-eq p0, v2, :cond_2

    const v0, 0x30d41

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_2

    return-object v1

    .line 75
    :pswitch_0
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5011:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :pswitch_1
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5012:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :pswitch_2
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5013:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :pswitch_3
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5014:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :pswitch_4
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5015:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :pswitch_5
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5016:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :pswitch_6
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5017:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :pswitch_7
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5018:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_8
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5019:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_9
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5020:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_a
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5021:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :pswitch_b
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5022:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    return-object v1

    .line 59
    :pswitch_d
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5001:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_e
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5002:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_f
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5003:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :pswitch_10
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5004:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_11
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5005:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :pswitch_12
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5006:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :pswitch_13
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5007:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :pswitch_14
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5008:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "\u5e7f\u544a\u521d\u59cb\u5316\u5f02\u5e38"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "\u672a\u68c0\u6d4b\u5230\u624b\u673a\u5b89\u88c5\u5fae\u4fe1"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "\u5fae\u4fe1\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u8fd0\u884c\u5c0f\u7a0b\u5e8f"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "\u672a\u83b7\u53d6\u5230\u5e7f\u544a\u914d\u7f6e\u6570\u636e"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object p0

    :cond_1
    return-object v1

    .line 56
    :cond_2
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_200000:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_3
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_603:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_4
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5100:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_5
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string/jumbo p0, "\u5e7f\u544a\u672a\u521d\u59cb\u5316\u6216\u8005\u521d\u59cb\u5316\u4fe1\u606f\u4e3a\u7a7a"

    return-object p0

    :cond_6
    const-string p0, "Please init first"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x139e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1390
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0xc73d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method
