.class public Lcom/baidu/mapapi/search/sug/SuggestionSearch;
.super Lcom/baidu/mapapi/search/core/n;
.source "SuggestionSearch.java"


# instance fields
.field a:Lcom/baidu/platform/core/h/a;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b:Z

    .line 17
    new-instance v0, Lcom/baidu/platform/core/h/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/h/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/h/a;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/sug/SuggestionSearch;
    .locals 1

    .line 21
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 22
    new-instance v0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b:Z

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/h/a;

    invoke-interface {v0}, Lcom/baidu/platform/core/h/a;->a()V

    .line 77
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public requestSuggestion(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/h/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/h/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/h/a;->a(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)Z

    move-result p1

    return p1

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or keyword or city can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: suggestionsearch is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetSuggestionResultListener(Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/h/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/h/a;->a(Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: suggestionsearch is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
