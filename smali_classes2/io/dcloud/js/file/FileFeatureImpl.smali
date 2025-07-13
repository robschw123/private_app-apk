.class public Lio/dcloud/js/file/FileFeatureImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "{code:%d,message:\'%s\'}"

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_unknown_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    aput-object p2, p1, v0

    invoke-static {v3, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_path_not_exist:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_path_exists:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_4
    new-array v2, v2, [Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_type_mismatch:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_5
    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_perform_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_6
    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_invalid_modification:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_7
    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_grammar_mistakes:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_8
    new-array v2, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_invalid_state:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_9
    new-array v2, v2, [Ljava/lang/Object;

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_no_modification_allowed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_a
    new-array v2, v2, [Ljava/lang/Object;

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_coding_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_b
    new-array v2, v2, [Ljava/lang/Object;

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_file_not_read:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_c
    new-array v2, v2, [Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_d
    new-array v2, v2, [Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_without_authorization:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_e
    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    sget p2, Lio/dcloud/base/R$string;->dcloud_io_file_not_found:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PRIVATE_WWW"

    const-string v3, "fsRoot"

    const-string v4, "fsName"

    const-string v5, "type"

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 138
    :cond_0
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 139
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRIVATE_DOCUMENTS"

    .line 140
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 142
    :cond_1
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 143
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PUBLIC_DOCUMENTS"

    .line 144
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 146
    :cond_2
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 147
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PUBLIC_DOWNLOADS"

    .line 148
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 150
    :cond_3
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 154
    :cond_4
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 155
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PUBLIC_DEVICE_ROOT"

    .line 156
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    :goto_0
    return-object v0
.end method

.method private a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 7

    .line 158
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 3
    aget-object v3, p3, v0

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    aput-object v3, v4, v0

    invoke-static {v1, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p2, 0xf

    .line 6
    invoke-direct {p0, p2, p1, p4}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-interface {p2, v3}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    .line 10
    aget-object v2, p3, v2

    invoke-static {v2, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v0, 0x2

    .line 11
    aget-object p3, p3, v0

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    .line 13
    invoke-direct {p0, p2, p1, p4}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Lio/dcloud/js/file/FileFeatureImpl$g;

    move-object v1, p2

    move-object v2, p0

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$g;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {p2}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 14

    move-object v0, p1

    const-string v1, "/"

    const-string v2, "{code:%d,message:\'%s\'}"

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 174
    :try_start_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v9, "Orientation"

    const/4 v10, 0x0

    if-nez v8, :cond_1

    :try_start_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v8, v11, :cond_1

    .line 178
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 180
    invoke-static {v8, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    new-instance v11, Landroid/media/ExifInterface;

    invoke-direct {v11, v8}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 182
    invoke-virtual {v11, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    move-object v9, v10

    goto :goto_0

    .line 186
    :cond_1
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v8, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    :goto_0
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 192
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 193
    iget-object v7, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 194
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 195
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 196
    array-length v7, v1

    sub-int/2addr v7, v6

    aget-object v7, v1, v7

    .line 199
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    .line 200
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v1, 0x9

    goto :goto_1

    :pswitch_1
    const-string v10, "7"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :pswitch_2
    const-string v10, "6"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :pswitch_3
    const-string v10, "5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_4
    const-string v10, "4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :pswitch_5
    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :pswitch_6
    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_7
    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_8
    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_1

    const-string v10, "up"

    goto :goto_2

    :pswitch_9
    const-string v10, "left"

    goto :goto_2

    :pswitch_a
    const-string v10, "right-mirrored"

    goto :goto_2

    :pswitch_b
    const-string v10, "right"

    goto :goto_2

    :pswitch_c
    const-string v10, "left-mirrored"

    goto :goto_2

    :pswitch_d
    const-string v10, "down-mirrored"

    goto :goto_2

    :pswitch_e
    const-string v10, "down"

    goto :goto_2

    :pswitch_f
    const-string v10, "up-mirrored"

    .line 230
    :cond_4
    :goto_2
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v9, "path"

    .line 231
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "width"

    .line 232
    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    .line 233
    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "orientation"

    .line 234
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v0, "type"

    .line 235
    :try_start_4
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :try_start_5
    invoke-static {v7, v8, v1, v0, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_4
    new-array v1, v5, [Ljava/lang/Object;

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_5
    new-array v1, v5, [Ljava/lang/Object;

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x30
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
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 17

    const-string v0, "90"

    .line 16
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 17
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apps/"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "/android_asset/"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    const-string v2, "/android_asset"

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "android_asset/"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android_asset"

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_2
    :goto_0
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_5

    const/16 v0, 0xf

    move-object/from16 v2, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 28
    invoke-direct {v2, v0, v10, v9}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 31
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_6

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, -0x4

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 33
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_9

    .line 36
    :cond_6
    :try_start_0
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 37
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 38
    invoke-virtual {v4, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_7
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lio/dcloud/common/util/FileUtil;->getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 42
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_8
    :goto_3
    const/16 v7, 0x9

    .line 46
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    .line 47
    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x13

    .line 48
    invoke-virtual {v4, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x18

    .line 49
    invoke-virtual {v4, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 50
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "getVideoInfo"

    move-object/from16 v15, p4

    .line 51
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/high16 v15, 0x447a0000    # 1000.0f

    if-eqz v14, :cond_1b

    .line 53
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v5, "270"

    if-nez v14, :cond_9

    :try_start_1
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v14, :cond_a

    :cond_9
    move-object/from16 v16, v11

    move-object v11, v8

    move-object/from16 v8, v16

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v11, :cond_b

    const-string v14, "resolution"

    .line 63
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_b
    if-eqz v8, :cond_c

    const-string v3, "width"

    .line 67
    :try_start_3
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v13, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_c
    if-eqz v11, :cond_d

    const-string v3, "height"

    .line 70
    :try_start_4
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v13, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_d
    const-string v3, "size"

    .line 73
    :try_start_5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v13, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v3, 0x20

    .line 74
    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v8, "fps"

    if-eqz v6, :cond_11

    .line 76
    :try_start_6
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    .line 77
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 78
    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_4

    .line 80
    :cond_e
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lio/dcloud/common/util/FileUtil;->getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 82
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v1, v9}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 85
    :cond_f
    :goto_4
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_12

    .line 87
    invoke-virtual {v3, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    const-string v11, "mime"

    .line 89
    invoke-virtual {v9, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 90
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "video/"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "frame-rate"

    .line 91
    invoke-virtual {v9, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    .line 92
    invoke-virtual {v13, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 98
    :cond_11
    :try_start_8
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v1, v3

    mul-float v1, v1, v15

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-virtual {v13, v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_12
    const/4 v1, -0x1

    .line 100
    :try_start_9
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x717

    if-eq v2, v3, :cond_15

    const v0, 0xbee9

    if-eq v2, v0, :cond_14

    const v0, 0xc28b

    if-eq v2, v0, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v5, 0x1

    goto :goto_7

    :cond_14
    const-string v0, "180"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v5, 0x2

    goto :goto_7

    :cond_15
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v0, :cond_16

    const/4 v5, 0x0

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v5, -0x1

    :goto_7
    if-eqz v5, :cond_19

    const/4 v0, 0x1

    if-eq v5, v0, :cond_18

    const/4 v0, 0x2

    if-eq v5, v0, :cond_17

    const-string v0, "up"

    goto :goto_8

    :cond_17
    const-string v0, "down"

    goto :goto_8

    :cond_18
    const-string v0, "left"

    goto :goto_8

    :cond_19
    const-string v0, "right"

    :goto_8
    :try_start_a
    const-string v1, "orientation"

    .line 113
    invoke-virtual {v13, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0xc

    .line 114
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "type"

    .line 116
    invoke-virtual {v13, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    const/16 v0, 0x14

    .line 118
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    if-nez v1, :cond_1b

    const-string v1, "bitrate"

    .line 120
    :try_start_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    :cond_1b
    const-string v0, "duration"

    .line 123
    :try_start_c
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v15

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 124
    :catch_4
    :try_start_d
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    .line 126
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v2, "code"

    const/16 v3, 0xd

    .line 128
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6

    const-string v2, "message"

    .line 129
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    .line 132
    :catch_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_1c
    :goto_9
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 242
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p2, v1

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    aget-object p2, p2, v1

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->jsonArrayToStringArr(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 246
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p2, 0x8

    .line 247
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    aget-object v7, p2, v0

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object v7, v3, v0

    invoke-static {v1, v3}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p2, 0xf

    .line 4
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 8
    invoke-interface {v0, v7}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    .line 9
    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 10
    aget-object v1, p2, v2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$f;-><init>(Lio/dcloud/js/file/FileFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x4

    .line 15
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p2, 0xa

    .line 50
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_www/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_doc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_documents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lio/dcloud/js/file/FileFeatureImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 8
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_2
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x3

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_3
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "_www"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_downloads"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_www/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_documents/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_downloads/"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "MD5"

    const/4 v8, 0x0

    .line 1
    aget-object v10, v1, v8

    .line 3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v11

    .line 4
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Io-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result v3

    .line 6
    invoke-interface {v11, v8}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    const/4 v4, -0x1

    .line 7
    invoke-interface {v11, v4}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    const/4 v12, 0x1

    .line 8
    invoke-interface {v11, v12}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    const/4 v5, 0x2

    .line 9
    invoke-interface {v11, v5}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    const/4 v6, 0x3

    .line 10
    invoke-interface {v11, v6}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v13, "chooseFile"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v13, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v13, "readEntries"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v13, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v13, "truncate"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v13, "getMetadata"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v13, "resolveLocalFileSystemURL"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v13, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v13, "removeRecursively"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v13, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v13, "getFileInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v13, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v13, "getVideoInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v13, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v13, "readAsBase64"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v13, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v13, "getParent"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v13, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v13, "writeAsBinary"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v13, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v13, "readAsDataURL"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v13, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v13, "convertAbsoluteFileSystem"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v13, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v13, "getAudioInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v13, 0xb

    goto/16 :goto_1

    :sswitch_e
    const-string v13, "write"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v13, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v13, "getFile"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v13, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v13, "getFileMetadata"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v13, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v13, "getImageInfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_0

    :cond_11
    const/4 v13, 0x7

    goto :goto_1

    :sswitch_12
    const-string v13, "remove"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_0

    :cond_12
    const/4 v13, 0x6

    goto :goto_1

    :sswitch_13
    const-string v13, "convertLocalFileSystemURL"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    goto :goto_0

    :cond_13
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_14
    const-string v13, "getDirectory"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    goto :goto_0

    :cond_14
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_15
    const-string v13, "readAsText"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    goto :goto_0

    :cond_15
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_16
    const-string v13, "moveTo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto :goto_0

    :cond_16
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_17
    const-string v13, "requestFileSystem"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    goto :goto_0

    :cond_17
    const/4 v13, 0x1

    goto :goto_1

    :sswitch_18
    const-string v13, "copyTo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    goto :goto_0

    :cond_18
    const/4 v13, 0x0

    goto :goto_1

    :goto_0
    const/4 v13, -0x1

    :goto_1
    const-string v6, "/android_asset"

    const-string v4, "android_asset/"

    const-string v5, "/android_asset/"

    const-string v14, "apps/"

    const-string v15, "filePath"

    const-string v12, ""

    const-string v8, "/"

    const/16 v20, 0x0

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_31

    :pswitch_0
    const/4 v13, 0x0

    .line 873
    aget-object v6, v1, v13

    .line 875
    array-length v0, v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_19

    aget-object v0, v1, v2

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 877
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "multiple"

    const/4 v2, 0x0

    .line 878
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const/4 v0, 0x0

    .line 883
    :goto_2
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v8

    .line 884
    new-instance v10, Lio/dcloud/js/file/FileFeatureImpl$e;

    move-object v1, v10

    move-object/from16 v2, p0

    move v3, v8

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/js/file/FileFeatureImpl$e;-><init>(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v11, v10, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 930
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    if-nez v0, :cond_1a

    const/4 v3, 0x0

    .line 932
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    :cond_1a
    const/4 v3, 0x1

    .line 934
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_3
    const-string v0, "*/*"

    .line 940
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 941
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_31

    .line 943
    :pswitch_1
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    goto/16 :goto_31

    :cond_1b
    const/4 v1, 0x0

    .line 947
    aget-object v0, v0, v1

    .line 948
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v0}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    goto :goto_4

    :cond_1c
    const/4 v1, 0x0

    goto :goto_5

    :cond_1d
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_1e

    const/16 v1, 0xf

    .line 950
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 953
    :cond_1e
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v3, :cond_1f

    :goto_6
    move-object/from16 v0, v20

    const/4 v12, 0x0

    goto :goto_7

    .line 960
    :cond_1f
    :try_start_1
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/js/file/a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v12, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :goto_7
    if-eqz v12, :cond_20

    .line 967
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;IZ)V

    goto/16 :goto_31

    :cond_20
    const/16 v1, 0xa

    .line 969
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_2
    const/4 v2, 0x0

    .line 1390
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    goto/16 :goto_31

    .line 1397
    :cond_21
    :try_start_2
    aget-object v1, v0, v2

    .line 1398
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v2

    invoke-static {v3, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v2, 0xf

    .line 1400
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1434
    invoke-static/range {v20 .. v20}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1435
    invoke-static/range {v20 .. v20}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_31

    .line 1436
    :cond_22
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1437
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1438
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1439
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1440
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x1

    .line 1441
    :try_start_5
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 1442
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v5, v4, v1

    const/16 v6, 0x2800

    .line 1443
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1444
    new-array v5, v5, [B

    move v6, v4

    const/4 v4, 0x0

    .line 1447
    :goto_8
    invoke-virtual {v11, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_26

    sub-int v13, v1, v4

    sub-int v14, v12, v6

    .line 1448
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-lez v13, :cond_23

    .line 1450
    invoke-virtual {v8, v5, v6, v13}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v4, v13

    :cond_23
    if-lt v4, v1, :cond_24

    goto :goto_9

    :cond_24
    if-lez v6, :cond_25

    sub-int/2addr v6, v12

    goto :goto_8

    :cond_25
    const/4 v6, 0x0

    goto :goto_8

    .line 1460
    :cond_26
    :goto_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1461
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v1, 0x1

    .line 1462
    aget-object v3, v0, v1

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v8, v20

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v11, v20

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v8, v20

    move-object v11, v8

    .line 1464
    :goto_a
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0xa

    .line 1465
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1467
    :goto_b
    invoke-static {v11}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1468
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_31

    :catchall_2
    move-exception v0

    move-object/from16 v20, v8

    .line 1469
    :goto_c
    invoke-static {v11}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1470
    invoke-static/range {v20 .. v20}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 1471
    throw v0

    .line 1472
    :pswitch_3
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    goto/16 :goto_31

    :cond_27
    const/4 v1, 0x0

    .line 1476
    aget-object v2, v0, v1

    .line 1477
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-static {v4, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_d

    :cond_28
    const/4 v1, 0x0

    goto :goto_e

    :cond_29
    :goto_d
    const/4 v1, 0x1

    :goto_e
    if-nez v1, :cond_2a

    const/16 v1, 0xf

    .line 1479
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1482
    :cond_2a
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz v3, :cond_2b

    :goto_f
    move-object/from16 v0, v20

    const/4 v12, 0x0

    goto :goto_11

    .line 1490
    :cond_2b
    :try_start_7
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2c

    const/4 v1, 0x1

    aget-object v3, v0, v1

    if-eqz v3, :cond_2c

    aget-object v3, v0, v1

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1491
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    :cond_2c
    const/4 v0, 0x0

    .line 1493
    :goto_10
    invoke-static {v2, v0}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v12, 0x1

    goto :goto_11

    :catch_5
    move-exception v0

    .line 1495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :goto_11
    if-eqz v12, :cond_2d

    .line 1500
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_31

    :cond_2d
    const/16 v1, 0xa

    .line 1502
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_4
    const/4 v2, 0x0

    .line 2044
    :try_start_8
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    goto/16 :goto_31

    .line 2052
    :cond_2e
    aget-object v0, v1, v2

    invoke-direct {v9, v0}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2055
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result v3

    if-eqz v3, :cond_2f

    aget-object v3, v1, v2

    invoke-interface {v11, v3}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_12

    :cond_2f
    const/4 v2, 0x0

    .line 2057
    :goto_12
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-interface {v11, v3, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_30

    .line 2059
    invoke-direct {v9, v13}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    const-string v12, "_www"

    const/4 v14, 0x1

    const-string v15, "_www"

    :try_start_9
    const-string v1, "fsName"

    .line 2061
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "fsRoot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 2062
    invoke-static/range {v12 .. v18}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2064
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_31

    .line 2066
    :cond_30
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    if-nez v3, :cond_33

    if-eqz v0, :cond_33

    .line 2070
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2071
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_31

    .line 2072
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2074
    :cond_31
    invoke-static {v13}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const/4 v3, 0x1

    if-ne v3, v0, :cond_32

    const/4 v12, 0x1

    goto :goto_13

    :cond_32
    const/4 v12, 0x0

    goto :goto_13

    :catch_6
    move-exception v0

    .line 2076
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    move v12, v3

    :goto_13
    if-eqz v12, :cond_34

    .line 2080
    invoke-direct {v9, v13}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2081
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v14

    const/4 v2, 0x0

    aget-object v15, v1, v2

    const-string v1, "fsName"

    .line 2082
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "fsRoot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 2083
    invoke-static/range {v12 .. v18}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2085
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_31

    :cond_34
    const/16 v1, 0xe

    .line 2087
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_31

    :catch_7
    const/16 v1, 0xa

    .line 2092
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2093
    :pswitch_5
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    goto/16 :goto_31

    :cond_35
    const/4 v1, 0x0

    .line 2097
    aget-object v2, v0, v1

    invoke-static {v7, v10, v2}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    return-object v20

    .line 2100
    :cond_36
    aget-object v0, v0, v1

    .line 2101
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0xf

    .line 2103
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2106
    :cond_37
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2109
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    move-object v1, v2

    goto :goto_14

    :catch_8
    move-exception v0

    .line 2113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2116
    :cond_38
    :goto_14
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2117
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v7, v10, v12, v0, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_31

    :cond_39
    const/16 v1, 0xa

    .line 2119
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_6
    const/4 v3, 0x0

    .line 2396
    aget-object v0, v1, v3

    .line 2400
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    const/4 v13, 0x1

    aget-object v1, v1, v13

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_9

    :try_start_e
    const-string v13, "digestAlgorithm"

    .line 2402
    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_15

    :catch_9
    move-object v1, v12

    :catch_a
    :goto_15
    move-object v13, v2

    .line 2405
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 2406
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2407
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 p2, v13

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v1, v13, v15

    invoke-static {v3, v13}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_16

    :cond_3a
    const/4 v1, 0x0

    goto :goto_17

    :cond_3b
    :goto_16
    const/4 v1, 0x1

    :goto_17
    if-nez v1, :cond_3c

    const/16 v1, 0xf

    .line 2409
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2412
    :cond_3c
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2414
    :cond_3d
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2415
    invoke-virtual {v2, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 2416
    :cond_3e
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "android_asset"

    .line 2417
    invoke-virtual {v2, v1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2419
    :cond_3f
    :goto_18
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2420
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_40

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x4

    .line 2422
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2423
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_31

    .line 2426
    :cond_40
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v8

    new-instance v10, Lio/dcloud/js/file/FileFeatureImpl$d;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/js/file/FileFeatureImpl$d;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/io/File;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto/16 :goto_31

    .line 2427
    :pswitch_7
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_41

    goto/16 :goto_31

    .line 2431
    :cond_41
    invoke-direct {v9, v7, v11, v0, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2543
    :pswitch_8
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_42

    goto/16 :goto_31

    :cond_42
    const/4 v1, 0x0

    .line 2548
    aget-object v0, v0, v1

    .line 2549
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_19

    :cond_43
    const/4 v1, 0x0

    goto :goto_1a

    :cond_44
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    if-nez v1, :cond_45

    const/16 v1, 0xf

    .line 2551
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_45
    if-eqz v0, :cond_46

    .line 2554
    invoke-direct {v9, v0}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x4

    .line 2555
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 2558
    :cond_46
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2560
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 2561
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2563
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    const/4 v8, 0x1

    goto :goto_1b

    :cond_47
    const/4 v8, 0x0

    :goto_1b
    if-nez v8, :cond_8e

    const/16 v1, 0xa

    .line 2566
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2567
    :pswitch_9
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    goto/16 :goto_31

    .line 2571
    :cond_48
    invoke-direct {v9, v7, v0, v10}, Lio/dcloud/js/file/FileFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2759
    :pswitch_a
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49

    goto/16 :goto_31

    :cond_49
    const/4 v1, 0x0

    .line 2763
    aget-object v4, v0, v1

    .line 2764
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object v4, v6, v1

    invoke-static {v2, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    const/16 v2, 0xf

    .line 2766
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2769
    :cond_4a
    invoke-interface {v11, v4}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    .line 2770
    aget-object v5, v0, v5

    invoke-static {v5, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, 0x2

    .line 2771
    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_4b

    if-eqz v3, :cond_4b

    const/16 v1, 0xa

    .line 2773
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 2775
    :cond_4b
    new-instance v8, Lio/dcloud/js/file/FileFeatureImpl$b;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v0

    move-object/from16 v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$b;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v8}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto/16 :goto_31

    :pswitch_b
    const/4 v2, 0x0

    .line 2907
    aget-object v0, v1, v2

    .line 2908
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3081
    aget-object v2, v1, v2

    .line 3084
    :try_start_f
    new-instance v4, Lorg/json/JSONObject;

    aget-object v1, v1, v3

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_b

    .line 3088
    :catch_b
    invoke-direct {v9, v12, v2, v7, v0}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3089
    :pswitch_d
    :try_start_10
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    goto/16 :goto_31

    :cond_4c
    const/4 v1, 0x0

    .line 3093
    aget-object v2, v0, v1

    .line 3094
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-static {v3, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    const/16 v1, 0xf

    .line 3096
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3099
    :cond_4d
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    .line 3100
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 3101
    aget-object v5, v0, v4

    if-eqz v5, :cond_4f

    if-eqz v1, :cond_4e

    goto :goto_1c

    .line 3105
    :cond_4e
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3106
    invoke-static {v0, v3, v2}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 3107
    array-length v0, v0

    int-to-double v3, v0

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V

    goto/16 :goto_31

    :cond_4f
    :goto_1c
    const/4 v0, 0x4

    .line 3108
    invoke-direct {v9, v0, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    return-object v20

    :catch_c
    const/16 v1, 0xa

    .line 3115
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3160
    :pswitch_e
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_50

    goto/16 :goto_31

    :cond_50
    const/4 v1, 0x0

    .line 3164
    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-interface {v11, v2, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3165
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    const/16 v1, 0xf

    .line 3167
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3170
    :cond_51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3172
    :try_start_11
    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 3173
    aget-object v0, v0, v4

    const-string v0, "create"

    .line 3174
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "exclusive"

    .line 3175
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_54

    if-eqz v0, :cond_53

    .line 3179
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v0

    .line 3180
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_52

    const/4 v4, -0x2

    if-ne v0, v4, :cond_56

    if-nez v3, :cond_52

    goto :goto_1d

    .line 3182
    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_53
    const/16 v1, 0xe

    .line 3185
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    :cond_54
    if-eqz v0, :cond_55

    if-eqz v3, :cond_55

    const/16 v0, 0xc

    .line 3189
    invoke-direct {v9, v0, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 3192
    :cond_55
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3194
    :cond_56
    :goto_1d
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 3195
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v10, v0, v1, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_31

    :catch_d
    const/16 v1, 0xa

    .line 3197
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3198
    :pswitch_f
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_57

    goto/16 :goto_31

    :cond_57
    const/4 v1, 0x0

    .line 3202
    aget-object v0, v0, v1

    .line 3203
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_1e

    :cond_58
    const/4 v1, 0x0

    goto :goto_1f

    :cond_59
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    if-nez v1, :cond_5a

    const/16 v1, 0xf

    .line 3205
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3208
    :cond_5a
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz v3, :cond_5b

    :goto_20
    move-object/from16 v0, v20

    const/4 v12, 0x0

    goto :goto_21

    .line 3215
    :cond_5b
    :try_start_12
    invoke-direct {v9, v0}, Lio/dcloud/js/file/FileFeatureImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    const/4 v12, 0x1

    goto :goto_21

    :catch_e
    move-exception v0

    .line 3217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    :goto_21
    if-eqz v12, :cond_5c

    .line 3222
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_31

    :cond_5c
    const/16 v1, 0xa

    .line 3224
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_10
    const/4 v2, 0x0

    .line 3784
    aget-object v0, v1, v2

    const/4 v2, 0x1

    .line 3785
    aget-object v3, v1, v2

    .line 3786
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 3788
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 3791
    :try_start_13
    array-length v2, v1

    const/4 v4, 0x2

    if-le v2, v4, :cond_5f

    aget-object v2, v1, v4

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 3792
    aget-object v1, v1, v4

    .line 3793
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 3794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5d
    const-string v2, "image/*"

    .line 3795
    invoke-static {v3, v2, v3}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3796
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 3797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3799
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_5f
    move-object/from16 v1, v20

    .line 3802
    :goto_22
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lio/dcloud/js/file/FileFeatureImpl$c;

    invoke-direct {v3, v9, v1, v7, v0}, Lio/dcloud/js/file/FileFeatureImpl$c;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_31

    :catch_f
    const-string v1, "Failed to load resource"

    const/16 v2, 0xd

    .line 3827
    invoke-static {v2, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_31

    .line 3830
    :cond_60
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3831
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v13, v3

    invoke-static {v2, v13}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_23

    :cond_61
    const/16 v19, 0x0

    goto :goto_24

    :cond_62
    :goto_23
    const/16 v19, 0x1

    :goto_24
    if-nez v19, :cond_63

    const/16 v2, 0xf

    .line 3833
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3836
    :cond_63
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 3837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3838
    :cond_64
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3839
    invoke-virtual {v1, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    .line 3840
    :cond_65
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "android_asset"

    .line 3841
    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3843
    :cond_66
    :goto_25
    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3844
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_67

    const/16 v2, 0xe

    .line 3845
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3847
    :cond_67
    invoke-direct {v9, v1, v7, v0}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3848
    :pswitch_11
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_68

    goto/16 :goto_31

    :cond_68
    const/4 v1, 0x0

    .line 3852
    aget-object v0, v0, v1

    .line 3853
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    const/16 v1, 0xf

    .line 3855
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 3858
    :cond_69
    invoke-interface {v11, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x4

    .line 3861
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 3864
    :cond_6a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3865
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3866
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v12, v0, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_31

    :cond_6b
    const/16 v1, 0xa

    .line 3868
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_12
    const/4 v2, 0x0

    .line 4436
    aget-object v0, v1, v2

    .line 4437
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_13
    const/4 v2, 0x0

    .line 4438
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6c

    goto/16 :goto_31

    .line 4442
    :cond_6c
    aget-object v1, v0, v2

    if-eqz v1, :cond_6d

    aget-object v1, v0, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 4443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 4445
    :cond_6d
    aget-object v1, v0, v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-interface {v11, v1, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4446
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    const/16 v4, 0xf

    .line 4448
    invoke-direct {v9, v4, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4452
    :cond_6e
    aget-object v4, v0, v2

    if-eqz v4, :cond_6f

    aget-object v4, v0, v3

    if-eqz v4, :cond_6f

    aget-object v4, v0, v3

    const-string v3, "../"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6f

    aget-object v3, v0, v2

    invoke-direct {v9, v3}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const/4 v2, 0x4

    .line 4453
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 4456
    :cond_6f
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 4457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4459
    :cond_70
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4461
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "create"

    .line 4462
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "exclusive"

    .line 4463
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4465
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    if-eqz v4, :cond_72

    .line 4467
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_71

    const/4 v4, -0x2

    if-ne v2, v4, :cond_74

    if-nez v3, :cond_71

    goto :goto_26

    .line 4469
    :cond_71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_72
    const/16 v2, 0xe

    .line 4472
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    :cond_73
    if-eqz v3, :cond_74

    if-eqz v3, :cond_74

    const/16 v2, 0xc

    .line 4478
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_74
    :goto_26
    const/4 v2, 0x1

    .line 4480
    aget-object v0, v0, v2

    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4481
    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v7, v10, v0, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    goto/16 :goto_31

    .line 4483
    :catch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 4484
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4485
    :pswitch_14
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_75

    goto/16 :goto_31

    :cond_75
    const/4 v1, 0x0

    .line 4489
    aget-object v4, v0, v1

    .line 4490
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object v4, v6, v1

    invoke-static {v2, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    const/16 v2, 0xf

    .line 4492
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4495
    :cond_76
    invoke-interface {v11, v4}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    .line 4496
    aget-object v6, v0, v5

    const/4 v5, 0x2

    .line 4497
    aget-object v5, v0, v5

    invoke-static {v5, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, 0x3

    .line 4498
    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_77

    if-eqz v3, :cond_77

    const/16 v1, 0xa

    .line 4500
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4502
    :cond_77
    new-instance v11, Lio/dcloud/js/file/FileFeatureImpl$a;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v0

    move-object/from16 v7, p1

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lio/dcloud/js/file/FileFeatureImpl$a;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v11}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto/16 :goto_31

    .line 4503
    :pswitch_15
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_78

    goto/16 :goto_31

    .line 4507
    :cond_78
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4508
    aget-object v3, v0, v2

    invoke-interface {v11, v3}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_27

    :cond_79
    const/4 v2, 0x0

    goto :goto_28

    :cond_7a
    :goto_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_7b

    const/16 v2, 0xa

    .line 4510
    invoke-direct {v9, v2, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4512
    :cond_7b
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-interface {v11, v2, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4513
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    aput-object v1, v6, v3

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-static {v4, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    const/16 v3, 0xf

    .line 4515
    invoke-direct {v9, v3, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4518
    :cond_7c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4519
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 4521
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4522
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 4524
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 4525
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 4526
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 4528
    :cond_7d
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    goto :goto_29

    :cond_7e
    const/4 v3, 0x0

    :goto_29
    if-eqz v3, :cond_7f

    const/4 v3, 0x2

    .line 4531
    aget-object v0, v0, v3

    invoke-interface {v11, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4532
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_31

    :cond_7f
    const/16 v1, 0xa

    .line 4534
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_16
    const/4 v2, 0x0

    .line 4847
    :try_start_15
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_80

    goto/16 :goto_31

    .line 4851
    :cond_80
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_84

    const/4 v1, 0x2

    if-eq v0, v1, :cond_83

    const/4 v1, 0x3

    if-eq v0, v1, :cond_82

    const/4 v1, 0x4

    if-eq v0, v1, :cond_81

    const-string v0, "PUBLIC_DEVICE_ROOT"

    .line 4867
    :try_start_16
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    const/4 v2, 0x5

    .line 4883
    invoke-static {v0, v2, v1, v1, v1}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11

    goto :goto_2a

    :cond_81
    const-string v0, "PUBLIC_DOWNLOADS"

    .line 4868
    :try_start_17
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    const-string v3, "_downloads"

    const/4 v4, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    goto :goto_2a

    :cond_82
    const-string v0, "PUBLIC_DOCUMENTS"

    .line 4869
    :try_start_18
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    const-string v3, "_documents"

    const/4 v4, 0x3

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    goto :goto_2a

    :cond_83
    const-string v0, "PRIVATE_DOCUMENTS"

    .line 4870
    :try_start_19
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    const-string v3, "_doc"

    const/4 v4, 0x2

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11

    goto :goto_2a

    :cond_84
    const-string v0, "PRIVATE_WWW"

    .line 4871
    :try_start_1a
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    const-string v3, "_www"

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4886
    :goto_2a
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11

    goto/16 :goto_31

    :catch_11
    move-exception v0

    .line 4888
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0xa

    .line 4889
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4890
    :pswitch_17
    invoke-direct {v9, v7, v1, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_85

    goto/16 :goto_31

    :cond_85
    const/4 v2, 0x1

    .line 4894
    aget-object v0, v1, v2

    if-eqz v0, :cond_87

    .line 4895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    goto :goto_2b

    :cond_86
    move-object v12, v4

    :goto_2b
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 4897
    :cond_87
    aget-object v0, v1, v2

    .line 4899
    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 4900
    aget-object v0, v1, v4

    .line 4901
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    aput-object v2, v6, v4

    const/4 v3, 0x1

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_89

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    goto :goto_2d

    :cond_88
    const/4 v13, 0x0

    goto :goto_2e

    :cond_89
    :goto_2d
    const/4 v13, 0x1

    :goto_2e
    if-nez v13, :cond_8a

    const/16 v3, 0xf

    .line 4903
    invoke-direct {v9, v3, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_31

    .line 4906
    :cond_8a
    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_8c

    .line 4910
    :try_start_1b
    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 4912
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 4913
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_8c

    goto :goto_2f

    .line 4916
    :cond_8b
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    if-eqz v0, :cond_8c

    :goto_2f
    const/4 v12, 0x1

    goto :goto_30

    :catch_12
    move-exception v0

    .line 4922
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8c
    const/4 v12, 0x0

    :goto_30
    if-eqz v12, :cond_8d

    const/4 v3, 0x2

    .line 4925
    aget-object v0, v1, v3

    invoke-interface {v11, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4926
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v2, 0x0

    invoke-static {v7, v10, v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_31

    :cond_8d
    const/16 v1, 0xa

    .line 4928
    invoke-direct {v9, v1, v7, v10}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_8e
    :goto_31
    return-object v20

    :sswitch_data_0
    .sparse-switch
        -0x50bf4f30 -> :sswitch_18
        -0x48fb9146 -> :sswitch_17
        -0x3fac69d4 -> :sswitch_16
        -0x3ca3664b -> :sswitch_15
        -0x39f27049 -> :sswitch_14
        -0x381a8bf4 -> :sswitch_13
        -0x37b5077c -> :sswitch_12
        -0x34ef320d -> :sswitch_11
        -0x574d4bf -> :sswitch_10
        -0x480a20e -> :sswitch_f
        0x6c257df -> :sswitch_e
        0xaa00aee -> :sswitch_d
        0x1350fab5 -> :sswitch_c
        0x1f8c3fdd -> :sswitch_b
        0x284c03d2 -> :sswitch_a
        0x29c22ba0 -> :sswitch_9
        0x3faaefd7 -> :sswitch_8
        0x4edba913 -> :sswitch_7
        0x4ffdedc0 -> :sswitch_6
        0x50a1221b -> :sswitch_5
        0x5db49c05 -> :sswitch_4
        0x6107b8a5 -> :sswitch_3
        0x6e724d66 -> :sswitch_2
        0x750fee1a -> :sswitch_1
        0x7897fc33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
