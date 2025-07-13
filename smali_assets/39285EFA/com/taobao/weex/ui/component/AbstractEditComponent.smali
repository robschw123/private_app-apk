.class public abstract Lcom/taobao/weex/ui/component/AbstractEditComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$ReturnTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXEditText;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEXT_FORMAT_REPEAT:I = 0x3


# instance fields
.field private mAutoFocus:Z

.field private mBeforeText:Ljava/lang/String;

.field private mEditorAction:I

.field private mEditorActionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView$OnEditorActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatRepeatCount:I

.field private mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeepSelectionIndex:Z

.field private mLastValue:Ljava/lang/String;

.field private mLineHeight:I

.field private mListeningKeyboard:Z

.field private mMax:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mReturnKeyType:Ljava/lang/String;

.field private mTextChangedEventDispatcher:Landroid/text/TextWatcher;

.field private mTextChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "isLazy",
            "basicComponentData"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, ""

    .line 78
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    const-string p2, "text"

    .line 80
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    const/4 p1, 0x6

    .line 84
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 85
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    .line 89
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 90
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    .line 91
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    .line 94
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    .line 97
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    .line 210
    new-instance p1, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 103
    new-instance p1, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    return p0
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/AbstractEditComponent;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p1
.end method

.method private addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "host"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 922
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 923
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 924
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    :cond_1
    return-void
.end method

.method private applyOnClickListener()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    return-void
.end method

.method private decideSoftKeyboard()V
    .locals 4

    .line 820
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 822
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 823
    new-instance v2, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 406
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "value"

    .line 407
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 411
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 412
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "attrs"

    .line 413
    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 688
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x81

    .line 704
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 705
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x21

    goto :goto_3

    .line 713
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 714
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    goto :goto_2

    :goto_1
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_3

    .line 694
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    :cond_9
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_5
    const/16 v1, 0x11

    goto :goto_3

    :pswitch_6
    const/4 v1, 0x3

    goto :goto_3

    :pswitch_7
    const/16 v1, 0x2002

    :cond_a
    :goto_3
    :pswitch_8
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        0x1c01b -> :sswitch_7
        0x1c56f -> :sswitch_6
        0x2eefae -> :sswitch_5
        0x36452d -> :sswitch_4
        0x3652cd -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x6ae9bb7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAlign"
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->isLayoutRTL()Z

    move-result v0

    const v1, 0x800005

    const v2, 0x800003

    if-eqz v0, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const v0, 0x800003

    .line 767
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const-string v3, "left"

    .line 771
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x800003

    goto :goto_1

    :cond_2
    const-string v2, "center"

    .line 773
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x11

    goto :goto_1

    :cond_3
    const-string v2, "right"

    .line 775
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    return v1
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .line 754
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsPattern",
            "replace"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "/[\\S]+/[i]?[m]?[g]?"

    .line 972
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "WXInput"

    if-nez v1, :cond_1

    .line 973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal js pattern syntax: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    const-string v3, "/"

    .line 979
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 980
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "i"

    .line 982
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    :cond_2
    const-string v3, "m"

    .line 986
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x20

    :cond_3
    const-string v3, "g"

    .line 990
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 996
    :try_start_0
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern syntax error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_4

    return-object v0

    .line 1004
    :cond_4
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    .line 1005
    invoke-static {v1, v3}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z

    .line 1006
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 1007
    invoke-static {v1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method private showSoftKeyboard()Z
    .locals 4

    .line 740
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 891
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 892
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    .line 893
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 310
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "change"

    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 333
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "input"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    :goto_0
    const-string v0, "return"

    .line 383
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_3
    const-string v0, "keyboard"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "editText"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "textAlign"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x800003

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    const-string v0, "#999999"

    .line 253
    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 255
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    .line 258
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 302
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    return-void
.end method

.method public blur()V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 788
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->clearFocus()V

    .line 789
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    :cond_1
    return-void
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propName",
            "originalValue"
        }
    .end annotation

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "black"

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 952
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 953
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->destroy()V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-eqz v0, :cond_1

    .line 958
    :try_start_0
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;->execute()V

    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Unregister throw "

    .line 961
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public focus()V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->ignoreFocus()V

    .line 800
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->requestFocus()Z

    const/4 v1, 0x1

    .line 801
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 802
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 803
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    :cond_1
    return-void
.end method

.method protected getMeasureHeight()F
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasuredLineHeight()F

    move-result v0

    return v0
.end method

.method protected final getMeasuredLineHeight()F
    .locals 2

    .line 141
    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackId"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 853
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 854
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 855
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 857
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 863
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionEnd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected getVerticalGravity()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-object v0
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->isDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected layoutDirectionDidChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRTL"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const p1, 0x800003

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "host"
        }
    .end annotation

    .line 75
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .line 190
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 191
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method public performOnChange(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "change"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 422
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAutofocus(Z)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autofocus"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autofocus"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 592
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    .line 593
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 594
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 596
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 597
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 598
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    goto :goto_0

    .line 600
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    :goto_0
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fontSize"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontSize"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 634
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "fontSize"

    .line 635
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "lines"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lines"
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    return-void
.end method

.method public setMax(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "max"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 731
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-void
.end method

.method public setMaxLength(I)V
    .locals 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxLength"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxLength"
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxlength(I)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxlength"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxLength"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "min"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min"
        }
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholder"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholder"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaceholderColor(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderColor"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "param"
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "autofocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "allowCopyPaste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "returnKeyType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "singleline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_a
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_b
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_c
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_d
    const-string v0, "maxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_e
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_f
    const-string v0, "placeholderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_10
    const-string v0, "keepSelectionIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    .line 516
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 457
    :pswitch_0
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 459
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setAutofocus(Z)V

    :cond_11
    return v2

    .line 510
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 511
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 512
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    :cond_12
    return v2

    .line 503
    :pswitch_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setReturnKeyType(Ljava/lang/String;)V

    return v2

    .line 477
    :pswitch_3
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 479
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setSingleLine(Z)V

    :cond_13
    return v2

    .line 442
    :pswitch_4
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 444
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholder(Ljava/lang/String;)V

    :cond_14
    return v2

    .line 467
    :pswitch_5
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 469
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setFontSize(Ljava/lang/String;)V

    :cond_15
    return v2

    .line 430
    :pswitch_6
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 431
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_17

    .line 432
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 433
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 434
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    goto :goto_1

    .line 436
    :cond_16
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 437
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    :cond_17
    :goto_1
    return v2

    .line 492
    :pswitch_7
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 494
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    :cond_18
    return v2

    .line 482
    :pswitch_8
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 484
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setLines(I)V

    :cond_19
    return v2

    .line 462
    :pswitch_9
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 464
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setColor(Ljava/lang/String;)V

    :cond_1a
    return v2

    .line 452
    :pswitch_a
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 454
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setType(Ljava/lang/String;)V

    :cond_1b
    return v2

    .line 500
    :pswitch_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMin(Ljava/lang/String;)V

    return v2

    .line 497
    :pswitch_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMax(Ljava/lang/String;)V

    return v2

    .line 487
    :pswitch_d
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 489
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    :cond_1c
    return v2

    .line 472
    :pswitch_e
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 474
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setTextAlign(Ljava/lang/String;)V

    :cond_1d
    return v2

    .line 447
    :pswitch_f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 449
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholderColor(Ljava/lang/String;)V

    :cond_1e
    return v2

    .line 506
    :pswitch_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 507
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x712b3675 -> :sswitch_10
        -0x5dfbd650 -> :sswitch_f
        -0x3f826a28 -> :sswitch_e
        -0x2f2bce96 -> :sswitch_d
        0x1a564 -> :sswitch_c
        0x1a652 -> :sswitch_b
        0x368f3a -> :sswitch_a
        0x5a72f63 -> :sswitch_9
        0x6234eff -> :sswitch_8
        0x76f454a -> :sswitch_7
        0x10263a7c -> :sswitch_6
        0x15caa0f0 -> :sswitch_5
        0x23a88573 -> :sswitch_4
        0x367fd03c -> :sswitch_3
        0x38797ee9 -> :sswitch_2
        0x60e3fed5 -> :sswitch_1
        0x6365ac89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "returnKeyType"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 524
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "send"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "next"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "done"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "go"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 527
    :pswitch_0
    iput v6, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_1

    .line 539
    :pswitch_1
    iput v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_1

    .line 533
    :pswitch_2
    iput v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x6

    .line 542
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_1

    .line 530
    :pswitch_4
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_1

    .line 536
    :pswitch_5
    iput v4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 549
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    .line 550
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setImeOptions(I)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_5
        0xce8 -> :sswitch_4
        0x2f2382 -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x35cf88 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectionRange(II)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectionStart",
            "selectionEnd"
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->focus()V

    .line 845
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "singleline"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleLine"
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "textAlign"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAlign"
        }
    .end annotation

    .line 642
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setTextFormatter(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    :try_start_0
    const-string v0, "formatRule"

    .line 872
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatReplace"

    .line 873
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recoverRule"

    .line 874
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "recoverReplace"

    .line 875
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object v0

    .line 878
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 881
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 884
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "type"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "weex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInputType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 579
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->applyOnClickListener()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 614
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 615
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result v1

    .line 616
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez p1, :cond_3

    const/4 v1, 0x0

    .line 618
    :cond_3
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    return-void
.end method

.method protected updateStyleAndAttrs()V
    .locals 7

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    .line 164
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    .line 168
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result v5

    if-eq v5, v2, :cond_4

    .line 170
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    :cond_4
    if-eq v1, v2, :cond_5

    .line 173
    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_5
    if-eqz v0, :cond_6

    .line 176
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3, v4, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    :cond_6
    return-void
.end method
