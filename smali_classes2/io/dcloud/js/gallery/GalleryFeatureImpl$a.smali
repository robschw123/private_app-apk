.class Lio/dcloud/js/gallery/GalleryFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 7

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xc

    const-string v0, "No Permission"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 7
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 2
    aget-object p1, p1, v1

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "multiple"

    .line 6
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 18
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    :goto_1
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1, v1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Z)Z

    return-void
.end method
