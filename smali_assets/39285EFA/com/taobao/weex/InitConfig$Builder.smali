.class public Lcom/taobao/weex/InitConfig$Builder;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/InitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

.field classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

.field drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

.field framework:Ljava/lang/String;

.field httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

.field private jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

.field jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

.field mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

.field mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

.field mVueBridgeAdapter:Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;

.field private nativeLibraryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

.field utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/InitConfig$Builder;->nativeLibraryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNativeLibrary(Ljava/lang/String;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/taobao/weex/InitConfig$Builder;->nativeLibraryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/taobao/weex/InitConfig;
    .locals 2

    .line 243
    new-instance v0, Lcom/taobao/weex/InitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/InitConfig;-><init>(Lcom/taobao/weex/InitConfig$1;)V

    .line 244
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 245
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .line 246
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/adapter/IDrawableLoader;

    .line 247
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 248
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$502(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 249
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$602(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 250
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$702(Lcom/taobao/weex/InitConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$802(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/adapter/URIAdapter;

    .line 252
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mVueBridgeAdapter:Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$902(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;)Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;

    .line 253
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1002(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .line 254
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1102(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 255
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1202(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 256
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1302(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/performance/IApmGenerator;)Lcom/taobao/weex/performance/IApmGenerator;

    .line 257
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1402(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;)Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    .line 258
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1502(Lcom/taobao/weex/InitConfig;Lcom/taobao/weex/adapter/IWXJscProcessManager;)Lcom/taobao/weex/adapter/IWXJscProcessManager;

    .line 259
    iget-object v1, p0, Lcom/taobao/weex/InitConfig$Builder;->nativeLibraryList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/taobao/weex/InitConfig;->access$1602(Lcom/taobao/weex/InitConfig;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public getJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/taobao/weex/InitConfig$Builder;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object v0
.end method

.method public setApmGenerater(Lcom/taobao/weex/performance/IApmGenerator;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apmGenerater"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->apmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    return-object p0
.end method

.method public setClassLoaderAdapter(Lcom/taobao/weex/adapter/ClassLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoaderAdapter"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->classLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object p0
.end method

.method public setDCVueBridgeAdapter(Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vueBridgeAdapter"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mVueBridgeAdapter:Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;

    return-object p0
.end method

.method public setDrawableLoader(Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableLoader"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->drawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    return-object p0
.end method

.method public setFramework(Ljava/lang/String;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framework"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->framework:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpAdapter"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->httpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object p0
.end method

.method public setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgAdapter"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->imgAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    return-object p0
.end method

.method public setJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "JSExceptionAdapter"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-object p0
.end method

.method public setJsFileLoaderAdapter(Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsFileLoaderAdapter"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->jsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    return-object p0
.end method

.method public setJscProcessManager(Lcom/taobao/weex/adapter/IWXJscProcessManager;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jscProcessManager"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->jscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object p0
.end method

.method public setSoLoader(Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loader"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->soLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    return-object p0
.end method

.method public setStorageAdapter(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storageAdapter"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->storageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object p0
.end method

.method public setURIAdapter(Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "URIAdapter"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    return-object p0
.end method

.method public setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "utAdapter"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->utAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object p0
.end method

.method public setWebSocketAdapterFactory(Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/taobao/weex/InitConfig$Builder;->webSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    return-object p0
.end method
