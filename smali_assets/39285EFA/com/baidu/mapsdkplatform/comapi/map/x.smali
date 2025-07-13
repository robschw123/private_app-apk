.class public Lcom/baidu/mapsdkplatform/comapi/map/x;
.super Ljava/lang/Object;
.source "MapStatusInner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/map/x$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "x"


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:D

.field public e:D

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:Lcom/baidu/mapapi/map/WinRound;

.field public k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

.field public l:Z

.field public m:D

.field public n:D

.field public o:I

.field public p:Ljava/lang/String;

.field public q:F

.field public r:Z

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    .line 56
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    .line 58
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    const-wide v1, 0x4168b73a40000000L    # 1.2958162E7

    .line 59
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->d:D

    const-wide v1, 0x415268ccc0000000L    # 4825907.0

    .line 60
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->e:D

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->h:F

    .line 62
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->i:F

    const/4 v1, -0x1

    .line 63
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->f:I

    .line 64
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    .line 65
    new-instance v1, Lcom/baidu/mapapi/map/WinRound;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/WinRound;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    .line 66
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    invoke-direct {v1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/x$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    .line 67
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapsdkplatform/comapi/map/d;)Landroid/os/Bundle;
    .locals 4

    .line 136
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 137
    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 140
    :cond_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 141
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    const/high16 v1, 0x44890000    # 1096.0f

    const/high16 v2, 0x41d00000    # 26.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    goto :goto_1

    .line 142
    :cond_2
    :goto_0
    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 143
    sput v2, Lcom/baidu/mapsdkplatform/comapi/map/d;->d:F

    .line 149
    :cond_3
    :goto_1
    iget p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    if-gez p1, :cond_4

    add-int/lit16 p1, p1, 0x168

    .line 150
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    goto :goto_1

    .line 152
    :cond_4
    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    .line 154
    iget p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    const/4 v0, 0x0

    if-lez p1, :cond_5

    .line 155
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    .line 157
    :cond_5
    iget p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    const/16 v1, -0x2d

    if-ge p1, v1, :cond_6

    .line 158
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    .line 161
    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    float-to-double v1, v1

    const-string v3, "level"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 163
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    int-to-double v1, v1

    const-string v3, "rotation"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 164
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    int-to-double v1, v1

    const-string v3, "overlooking"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 165
    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->d:D

    const-string v3, "centerptx"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 166
    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->e:D

    const-string v3, "centerpty"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 167
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->left:I

    const-string v2, "left"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    const-string v2, "right"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->top:I

    const-string v2, "top"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    const-string v2, "bottom"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->f:I

    if-ltz v1, :cond_7

    iget v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->right:I

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    if-gt v1, v2, :cond_7

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    if-lez v1, :cond_7

    .line 175
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 176
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v3, v3, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 178
    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->f:I

    sub-int/2addr v3, v1

    .line 179
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    sub-int/2addr v1, v2

    int-to-float v2, v3

    .line 180
    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->h:F

    neg-int v1, v1

    int-to-float v1, v1

    .line 182
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->i:F

    const-string/jumbo v1, "xoffset"

    .line 184
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 185
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->i:F

    const-string/jumbo v2, "yoffset"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 188
    :cond_7
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "lbx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v2, "lby"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "ltx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v2, "lty"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "rtx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v2, "rty"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "rbx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v2, "rby"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    const-string v3, "gleft"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    const-string v3, "gbottom"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    const-string v3, "gtop"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    const-string v3, "gright"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->l:Z

    const-string v2, "bfpp"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string v2, "animation"

    .line 203
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->o:I

    const-string v2, "animatime"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->p:Ljava/lang/String;

    const-string v2, "panoid"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autolink"

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->q:F

    const-string v1, "siangle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 208
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->r:Z

    const-string v1, "isbirdeye"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->s:I

    const-string v1, "ssext"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "level"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    const-string v0, "rotation"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    const-string v0, "overlooking"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    const-string v0, "centerptx"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->d:D

    const-string v0, "centerpty"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->e:D

    .line 79
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->left:I

    .line 80
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "right"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    .line 81
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "top"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->top:I

    .line 82
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    const-string/jumbo v0, "xoffset"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->h:F

    const-string/jumbo v0, "yoffset"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->i:F

    .line 87
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 90
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 92
    iget v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->h:F

    float-to-int v2, v2

    .line 94
    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->i:F

    neg-float v3, v3

    float-to-int v3, v3

    add-int/2addr v2, v0

    .line 95
    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->f:I

    add-int/2addr v3, v1

    .line 96
    iput v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    const-string v1, "gleft"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    .line 100
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    const-string v1, "gright"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    .line 101
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    const-string v1, "gtop"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    .line 102
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    const-string v1, "gbottom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    .line 104
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    const-wide/32 v2, -0x131bf84

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 105
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    const-wide/32 v4, 0x131bf84

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    .line 108
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iput-wide v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_4

    .line 111
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iput-wide v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 114
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    .line 118
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    .line 119
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    .line 120
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    .line 121
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    .line 122
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    .line 123
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    .line 124
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    const-string v0, "bfpp"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->l:Z

    const-string v0, "adapterZoomUnits"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->m:D

    const-string/jumbo v0, "zoomunit"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->n:D

    const-string v0, "panoid"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->p:Ljava/lang/String;

    const-string v0, "siangle"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->q:F

    const-string v0, "isbirdeye"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->r:Z

    const-string v0, "ssext"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x;->s:I

    return-void
.end method
