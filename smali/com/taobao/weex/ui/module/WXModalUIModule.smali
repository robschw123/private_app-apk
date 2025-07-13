.class public Lcom/taobao/weex/ui/module/WXModalUIModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXModalUIModule.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "Cancel"

.field public static final CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GRAVITY:Ljava/lang/String; = "gravity"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OK_TITLE:Ljava/lang/String; = "okTitle"

.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field private activeDialog:Landroid/app/Dialog;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/module/WXModalUIModule;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private tracking(Landroid/app/Dialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    .line 263
    new-instance v0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/module/WXModalUIModule$6;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public alert(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "jsObj",
            "callback"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    const-string v0, "OK"

    const-string v1, ""

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "message"

    .line 119
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "okTitle"

    .line 120
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    const-string v3, "[WXModalUIModule] alert param parse error "

    .line 122
    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    move-object v2, v1

    .line 125
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v2

    .line 128
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, p1

    .line 132
    :goto_3
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule$1;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 141
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 143
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    goto :goto_4

    :cond_3
    const-string p1, "[WXModalUIModule] when call alert mWXSDKInstance.getContext() must instanceof Activity"

    .line 145
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public confirm(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "jsObj",
            "callback"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    const-string v0, "Cancel"

    const-string v1, "OK"

    const-string v2, ""

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "message"

    .line 159
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "okTitle"

    .line 160
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "cancelTitle"

    .line 161
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v4, v1

    move-object v3, v2

    :goto_0
    const-string v5, "[WXModalUIModule] confirm param parse error "

    .line 163
    invoke-static {v5, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    move-object v4, v1

    move-object v3, v2

    .line 166
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 169
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v4

    .line 173
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, p1

    .line 175
    :goto_4
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$2;

    invoke-direct {p1, p0, p2, v1}, Lcom/taobao/weex/ui/module/WXModalUIModule$2;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$3;

    invoke-direct {p1, p0, p2, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule$3;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v3, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 192
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 194
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    goto :goto_5

    :cond_4
    const-string p1, "[WXModalUIModule] when call confirm mWXSDKInstance.getContext() must instanceof Activity"

    .line 196
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public prompt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "jsObj",
            "callback"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    const-string v0, "Cancel"

    const-string v1, "OK"

    const-string v2, ""

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "message"

    .line 210
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v4, "okTitle"

    .line 211
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v5, "cancelTitle"

    .line 212
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v6, "default"

    .line 213
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v5, v0

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v5, v0

    move-object v4, v1

    goto :goto_0

    :catch_3
    move-exception p1

    move-object v5, v0

    move-object v4, v1

    move-object v3, v2

    :goto_0
    const-string v6, "[WXModalUIModule] confirm param parse error "

    .line 215
    invoke-static {v6, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v2

    goto :goto_1

    :cond_0
    move-object v5, v0

    move-object v4, v1

    move-object p1, v2

    move-object v3, p1

    .line 219
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 222
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    new-instance v2, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v4

    .line 229
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, v5

    .line 230
    :goto_4
    new-instance p1, Lcom/taobao/weex/ui/module/WXModalUIModule$5;

    invoke-direct {p1, p0, p2, v1, v2}, Lcom/taobao/weex/ui/module/WXModalUIModule$5;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/module/WXModalUIModule$4;

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/taobao/weex/ui/module/WXModalUIModule$4;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 253
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 255
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    goto :goto_5

    :cond_4
    const-string/jumbo p1, "when call prompt mWXSDKInstance.getContext() must instanceof Activity"

    .line 257
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public toast(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsObj"
        }
    .end annotation

    const-string v0, "gravity"

    const-string v1, "duration"

    .line 66
    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v5, "message"

    .line 74
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    :goto_1
    const-string v0, "[WXModalUIModule] alert param parse error "

    .line 85
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/16 p1, 0x11

    goto :goto_2

    :cond_3
    const/16 p1, 0x11

    const/4 v1, 0x0

    .line 88
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "[WXModalUIModule] toast param parse is null "

    .line 89
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x3

    if-le v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 98
    :goto_3
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_6

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    goto :goto_4

    .line 101
    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    if-ne v3, p1, :cond_7

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 107
    :cond_7
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
