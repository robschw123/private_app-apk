.class public final synthetic Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/common/DHInterface/IWebview;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$0:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p2, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$0:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->lambda$gDnxNnI07kpyxHgrhs8Mg5WBwKA(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
