.class final enum Lcom/taobao/weex/ui/view/border/BorderStyle;
.super Ljava/lang/Enum;
.source "BorderStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/view/border/BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/border/BorderStyle;

.field public static final enum DASHED:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field public static final enum DOTTED:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field public static final enum SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 30
    new-instance v1, Lcom/taobao/weex/ui/view/border/BorderStyle;

    const-string v3, "DASHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/ui/view/border/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->DASHED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 31
    new-instance v3, Lcom/taobao/weex/ui/view/border/BorderStyle;

    const-string v5, "DOTTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/ui/view/border/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/ui/view/border/BorderStyle;->DOTTED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/taobao/weex/ui/view/border/BorderStyle;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 28
    sput-object v5, Lcom/taobao/weex/ui/view/border/BorderStyle;->$VALUES:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/border/BorderStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/border/BorderStyle;
    .locals 1

    .line 28
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->$VALUES:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/border/BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-object v0
.end method


# virtual methods
.method getLineShader(FILcom/taobao/weex/dom/CSSShorthand$EDGE;)Landroid/graphics/Shader;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "borderWidth",
            "borderColor",
            "edge"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 44
    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle$1;->$SwitchMap$com$taobao$weex$ui$view$border$BorderStyle:[I

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 46
    :cond_0
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    .line 49
    :cond_1
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne v0, v1, :cond_2

    goto :goto_3

    .line 54
    :cond_2
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const/high16 v5, 0x40c00000    # 6.0f

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 57
    :cond_3
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_5
    :goto_1
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    mul-float v5, v5, p1

    const/4 v8, 0x0

    new-array v9, v4, [I

    aput p2, v9, v3

    aput v3, v9, v2

    new-array v10, v4, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    move v2, v6

    move v3, v7

    move v4, v5

    move v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    .line 55
    :cond_6
    :goto_2
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    mul-float v16, p1, v5

    new-array v1, v4, [I

    aput p2, v1, v3

    aput v3, v1, v2

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    sget-object v19, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v12, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    .line 50
    :cond_7
    :goto_3
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v6, 0x0

    mul-float v7, p1, v5

    const/4 v8, 0x0

    new-array v9, v4, [I

    aput p2, v9, v3

    aput v3, v9, v2

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    move v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    .line 47
    :cond_8
    :goto_4
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    mul-float v15, p1, v5

    new-array v1, v4, [I

    aput p2, v1, v3

    aput v3, v1, v2

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    sget-object v18, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v11, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method
