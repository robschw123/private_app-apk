.class Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$1;
.super Ljava/lang/Object;
.source "BaiduGeoManager.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;


# direct methods
.method constructor <init>(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$1;->this$0:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pEventType",
            "pArgs"
        }
    .end annotation

    const-string v0, "window_close"

    .line 110
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "close"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$1;->this$0:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    invoke-static {p1}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->access$000(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;)V

    .line 112
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
