.class public Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;
.super Ljava/lang/Object;
.source "ExpressionPair.java"


# instance fields
.field public final origin:Ljava/lang/String;

.field public final transformed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;
    .locals 1

    .line 47
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isValid(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    const-string/jumbo v0, "{}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 59
    :cond_1
    check-cast p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 62
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
