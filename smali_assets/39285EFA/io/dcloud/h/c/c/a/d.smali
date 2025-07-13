.class public Lio/dcloud/h/c/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/c/a/d$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Lorg/json/JSONObject;

.field private r:I


# direct methods
.method private constructor <init>(Lio/dcloud/h/c/c/a/d$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->k:Z

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lio/dcloud/h/c/c/a/d;->o:I

    .line 13
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->p:Z

    .line 18
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->a(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->a:I

    .line 19
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->b(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->b:I

    .line 20
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->j(Lio/dcloud/h/c/c/a/d$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/h/c/c/a/d;->c:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->k(Lio/dcloud/h/c/c/a/d$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/h/c/c/a/d;->d:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->l(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->e:I

    .line 23
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->m(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->f:I

    .line 24
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->n(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->g:I

    .line 25
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->o(Lio/dcloud/h/c/c/a/d$b;)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/h/c/c/a/d;->h:Z

    .line 26
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->p(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->i:I

    .line 27
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->q(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v1

    iput v1, p0, Lio/dcloud/h/c/c/a/d;->j:I

    .line 28
    iget v1, p0, Lio/dcloud/h/c/c/a/d;->e:I

    if-gtz v1, :cond_0

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->f:I

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->k:Z

    .line 29
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->c(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/a/d;->l:I

    .line 30
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->d(Lio/dcloud/h/c/c/a/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/d;->m:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->e(Lio/dcloud/h/c/c/a/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/d;->n:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->f(Lio/dcloud/h/c/c/a/d$b;)I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/a/d;->o:I

    .line 33
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->g(Lio/dcloud/h/c/c/a/d$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->p:Z

    .line 34
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->h(Lio/dcloud/h/c/c/a/d$b;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/d;->q:Lorg/json/JSONObject;

    .line 35
    invoke-static {p1}, Lio/dcloud/h/c/c/a/d$b;->i(Lio/dcloud/h/c/c/a/d$b;)I

    move-result p1

    iput p1, p0, Lio/dcloud/h/c/c/a/d;->r:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/h/c/c/a/d$b;Lio/dcloud/h/c/c/a/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/a/d;-><init>(Lio/dcloud/h/c/c/a/d$b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->r:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/dcloud/h/c/c/a/d;->b:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->l:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->o:I

    return v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/d;->q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->b:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->i:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/d;->e:I

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->p:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->k:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/a/d;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cfg{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", p=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/h/c/c/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bdt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/dcloud/h/c/c/a/d;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/a/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
