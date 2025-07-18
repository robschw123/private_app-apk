.class Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;
.super Lcom/dcloud/android/v4/view/WindowInsetsCompat;


# instance fields
.field private final mSource:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>(Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/WindowInsetsCompat;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public consumeStableInsets()Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .locals 2

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public consumeSystemWindowInsets()Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .locals 2

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public getStableInsetBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    return v0
.end method

.method public getStableInsetRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    return v0
.end method

.method public getStableInsetTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public hasInsets()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result v0

    return v0
.end method

.method public hasStableInsets()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .locals 2

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .locals 2

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method unwrap()Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    return-object v0
.end method
