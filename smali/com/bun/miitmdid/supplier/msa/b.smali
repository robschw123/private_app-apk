.class public Lcom/bun/miitmdid/supplier/msa/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;
.implements Lcom/bun/miitmdid/c/e/a;


# instance fields
.field public a:Lcom/bun/supplier/SupplierListener;

.field private b:Lcom/bun/miitmdid/supplier/msa/MsaClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bun/miitmdid/supplier/msa/MsaClient;->CheckService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bun/lib/sysParamters;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/supplier/msa/MsaClient;->StartMsaKlService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/bun/miitmdid/supplier/msa/MsaClient;

    invoke-direct {v0, p1, p0}, Lcom/bun/miitmdid/supplier/msa/MsaClient;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/msa/b;->b:Lcom/bun/miitmdid/supplier/msa/MsaClient;

    :cond_1
    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
.end method

.method public native a(Z)V
.end method

.method public native a()Z
.end method

.method public native b()V
.end method

.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getUDID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native isSupported()Z
.end method

.method public native shutDown()V
.end method
