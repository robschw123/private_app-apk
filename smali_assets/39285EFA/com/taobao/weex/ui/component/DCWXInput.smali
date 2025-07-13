.class public Lcom/taobao/weex/ui/component/DCWXInput;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;,
        Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;,
        Lcom/taobao/weex/ui/component/DCWXInput$ReturnTypes;
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
.field final ADJUST_POSITION:Ljava/lang/String;

.field final PASSWORD:Ljava/lang/String;

.field private cursor:I

.field isConfirmHold:Z

.field private isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isNeedConfirm:Z

.field private isPassword:Z

.field keyboardHeight:F

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

.field private mFontFamily:Ljava/lang/String;

.field private mFormatRepeatCount:I

.field private mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

.field private mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLineHeight:I

.field private mListeningConfirm:Z

.field private mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

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

.field protected mType:Ljava/lang/String;

.field private mTypefaceObserver:Landroid/content/BroadcastReceiver;

.field private measureHeight:F

.field private measureWidht:F

.field private placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

.field private placeholderTextAlign:Ljava/lang/String;

.field private selectionEnd:I

.field private selectionStart:I

.field private textAlign:Ljava/lang/String;


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

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, ""

    .line 102
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    const-string p1, "text"

    .line 103
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    const/4 p2, 0x6

    .line 105
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    const/4 p2, 0x0

    .line 106
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    .line 108
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    .line 109
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    .line 111
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    .line 114
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    .line 117
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    .line 118
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    const-string p3, "adjustPosition"

    .line 119
    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->ADJUST_POSITION:Ljava/lang/String;

    const-string p3, "password"

    .line 120
    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->PASSWORD:Ljava/lang/String;

    const/4 p3, 0x0

    .line 121
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    .line 122
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    const/4 p3, 0x1

    .line 123
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isNeedConfirm:Z

    .line 124
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    const p2, 0x7fffffff

    .line 126
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 127
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    const-string p2, "left"

    .line 128
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    .line 129
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    const/high16 p2, -0x40800000    # -1.0f

    .line 130
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    .line 131
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    .line 430
    new-instance p2, Lcom/taobao/weex/ui/component/DCWXInput$6;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/DCWXInput$6;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    .line 740
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->interceptFocusAndBlurEvent()V

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 137
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXInput$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$1;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/DCWXInput;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    return p1
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/taobao/weex/ui/component/DCWXInput;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    return p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    return p0
.end method

.method static synthetic access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/taobao/weex/ui/component/DCWXInput;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->hostViewFocus(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    return p0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->updateStyleAndAttrs()V

    return-void
.end method

.method static synthetic access$2000(Lcom/taobao/weex/ui/component/DCWXInput;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    return-void
.end method

.method static synthetic access$2102(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderTextAlign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    return p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    return p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method private final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
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

    .line 1245
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    .line 1248
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$13;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$13;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addEditorChangeListener()V
    .locals 1

    .line 275
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$3;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
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

    .line 1277
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1278
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$14;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$14;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setkeyBoardHeightChangeListener(Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;)V

    :cond_1
    return-void
.end method

.method private decideSoftKeyboard()V
    .locals 4

    .line 1155
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1157
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1158
    new-instance v2, Lcom/taobao/weex/ui/component/DCWXInput$12;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$12;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 996
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "digit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x81

    .line 1012
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1013
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x21

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x2002

    goto :goto_3

    .line 1021
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1022
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    goto :goto_2

    :goto_1
    :pswitch_4
    const/4 v1, 0x1

    goto :goto_3

    .line 1002
    :pswitch_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    :cond_a
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x11

    goto :goto_3

    :pswitch_7
    const/4 v1, 0x3

    goto :goto_3

    :pswitch_8
    const/4 v1, 0x2

    :cond_b
    :goto_3
    :pswitch_9
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_9
        0x1c01b -> :sswitch_8
        0x1c56f -> :sswitch_7
        0x2eefae -> :sswitch_6
        0x36452d -> :sswitch_5
        0x3652cd -> :sswitch_4
        0x5b2792d -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x6ae9bb7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAlign"
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutRTL()Z

    move-result v0

    const v1, 0x800005

    const v2, 0x800003

    if-eqz v0, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const v0, 0x800003

    .line 1084
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 1088
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "right"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "left"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v1, v0

    goto :goto_2

    :pswitch_0
    const v1, 0x800003

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x11

    :goto_2
    :pswitch_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hostViewFocus(Landroid/widget/EditText;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputView"
        }
    .end annotation

    const/4 v0, 0x1

    .line 810
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 811
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 812
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 813
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 814
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V

    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;
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

    .line 1377
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "WXInput"

    if-nez v1, :cond_1

    .line 1378
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

    .line 1384
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1385
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "i"

    .line 1387
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    :cond_2
    const-string v3, "m"

    .line 1391
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x20

    :cond_3
    const-string v3, "g"

    .line 1395
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1401
    :try_start_0
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1403
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

    .line 1409
    :cond_4
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$1;)V

    .line 1410
    invoke-static {v1, v3}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2702(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Z)Z

    .line 1411
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2802(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 1412
    invoke-static {v1, p2}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2902(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method private registerTypefaceObserver(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desiredFontFamily"
        }
    .end annotation

    .line 636
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "WXText"

    const-string v0, "ApplicationContent is null on register typeface observer"

    .line 637
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 641
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFontFamily:Ljava/lang/String;

    .line 642
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    return-void

    .line 646
    :cond_1
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXInput$7;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$7;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 665
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "type_face_available"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setSelectionRange(II)V
    .locals 3
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

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_4

    if-eq p1, v0, :cond_4

    .line 1175
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1176
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->length()I

    move-result v1

    if-le p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-le p2, v1, :cond_2

    move p2, v1

    :cond_2
    if-gez p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    .line 1189
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_4
    return-void
.end method

.method private showSoftKeyboard()V
    .locals 4

    .line 1059
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$10;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private updateStyleAndAttrs()V
    .locals 7

    .line 201
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getViewPortWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getViewPortWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result v5

    if-eq v5, v2, :cond_4

    .line 222
    iput v5, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    :cond_4
    if-eq v1, v2, :cond_5

    .line 225
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_5
    if-eqz v0, :cond_6

    .line 228
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3, v4, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "input"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$5;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$5;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    const-string v0, "confirm"

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    :cond_2
    const-string v0, "focus"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "blur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->setFocusAndBlur()V

    .line 427
    :cond_4
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

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

    .line 310
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "textAlign"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x800003

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    const-string v0, "#999999"

    .line 316
    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 318
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    .line 321
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$4;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 365
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public blur()V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 1109
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->clearFocus()V

    .line 1110
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

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

    .line 1144
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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
    .locals 1

    .line 1356
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 1357
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1358
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1361
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1364
    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 1366
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1367
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->destroy()V

    :cond_3
    return-void
.end method

.method public focus()V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1130
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_1

    .line 1131
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->ignoreFocus()V

    .line 1135
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->requestFocus()Z

    const/4 v1, 0x1

    .line 1136
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 1137
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 1138
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V

    :cond_1
    return-void
.end method

.method public getCursor(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1216
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    const-string v2, "cursor"

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :goto_0
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method protected getMeasureHeight()F
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasuredLineHeight()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasureHeight()F

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    return v0
.end method

.method final getMeasuredLineHeight()F
    .locals 2

    .line 192
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackId"
        }
    .end annotation

    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 1196
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1198
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 1199
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 1201
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1207
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionEnd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalGravity()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method hideSoftKeyboard()V
    .locals 4

    .line 1071
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$11;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
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

    .line 99
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

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

    .line 235
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    const/4 p1, 0x6

    .line 237
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setImeOptions(I)V

    return-object v0
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->isDisabled()Z

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

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const p1, 0x800003

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

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

    .line 99
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .line 243
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 244
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getRef()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 247
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 248
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 250
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$2;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 270
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isNeedConfirm:Z

    if-eqz p1, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->addEditorChangeListener()V

    :cond_2
    return-void
.end method

.method public setAdjustPosition(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "adjustPosition"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 803
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 804
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    .line 805
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setInputSoftMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAutofocus(Z)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autofocus"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autofocus"
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 748
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 749
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isFrameViewShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/DCWXInput$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$8;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    if-eqz v1, :cond_2

    .line 769
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    .line 771
    :cond_2
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$9;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    .line 789
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 793
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->hostViewFocus(Landroid/widget/EditText;)V

    goto :goto_0

    .line 795
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

    .line 796
    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :goto_1
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

    .line 838
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setCursorSpacing(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "cursorSpacing"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1052
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {p1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lio/dcloud/feature/uniapp/utils/UniViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 1054
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCursorSpacing(F)V

    :cond_0
    return-void
.end method

.method protected setFocusAndBlur()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

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

    .line 848
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 849
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "fontSize"

    .line 850
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "host",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 99
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/DCWXInput;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 171
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    return-void
.end method

.method protected setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLayoutSize"
        }
    .end annotation

    .line 176
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

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

    .line 962
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 965
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

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

    .line 975
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7fffffff

    .line 980
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

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

    .line 991
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholder"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 711
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaceholderClass(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderClass"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .line 940
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V

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

    .line 716
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    :cond_0
    return-void
.end method

.method public setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 17
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderStyle"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styleStr1"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 857
    iget-object v1, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 859
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "placeholder"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 864
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/WXEditText;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 865
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/WXEditText;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 868
    iget-object v5, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 869
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v13, "fontSize"

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, -0x1

    const/4 v12, 0x1

    sparse-switch v11, :sswitch_data_0

    :goto_1
    const/4 v10, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v11, "backgroundColor"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v10, 0x8

    goto :goto_2

    :sswitch_1
    const-string v11, "text-align"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    goto :goto_2

    :sswitch_2
    const-string v11, "background-color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x6

    goto :goto_2

    :sswitch_3
    const-string v11, "font-weight"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x5

    goto :goto_2

    :sswitch_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    const/4 v10, 0x4

    goto :goto_2

    :sswitch_5
    const-string v11, "color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    const/4 v10, 0x3

    goto :goto_2

    :sswitch_6
    const-string v11, "fontWeight"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    const/4 v10, 0x2

    goto :goto_2

    :sswitch_7
    const-string v11, "textAlign"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    const/4 v10, 0x1

    goto :goto_2

    :sswitch_8
    const-string v11, "font-size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_1

    :cond_b
    const/4 v10, 0x0

    :goto_2
    const/high16 v11, -0x80000000

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 874
    :pswitch_0
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 875
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_2

    .line 877
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto/16 :goto_0

    .line 881
    :pswitch_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 882
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_2

    .line 884
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto/16 :goto_0

    .line 897
    :pswitch_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_3

    :sswitch_9
    const-string v8, "bold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    const/16 v16, 0x4

    goto :goto_3

    :sswitch_a
    const-string v8, "900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_3

    :cond_d
    const/16 v16, 0x3

    goto :goto_3

    :sswitch_b
    const-string v8, "800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_3

    :cond_e
    const/16 v16, 0x2

    goto :goto_3

    :sswitch_c
    const-string v8, "700"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_3

    :cond_f
    const/16 v16, 0x1

    goto :goto_3

    :sswitch_d
    const-string v8, "600"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_3

    :cond_10
    const/16 v16, 0x0

    :goto_3
    packed-switch v16, :pswitch_data_1

    .line 906
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_0

    .line 903
    :pswitch_3
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_0

    .line 889
    :pswitch_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderTextAlign:Ljava/lang/String;

    .line 890
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v9, v8}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    goto/16 :goto_0

    .line 912
    :pswitch_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "px"

    .line 918
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 919
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_11
    const-string/jumbo v8, "wx"

    .line 920
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 921
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 923
    :cond_12
    :goto_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 924
    invoke-interface {v8, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v1, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    goto/16 :goto_0

    .line 929
    :cond_13
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v3, v1, v9, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v6, :cond_14

    .line 931
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v6, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    if-eqz v7, :cond_15

    .line 933
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v7, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 934
    :cond_15
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v4, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e89b141 -> :sswitch_8
        -0x3f826a28 -> :sswitch_7
        -0x2bc67c59 -> :sswitch_6
        0x5a72f63 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x23b0f9b6 -> :sswitch_3
        0x24147e04 -> :sswitch_2
        0x2c7a9a65 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xd0b6 -> :sswitch_d
        0xd477 -> :sswitch_c
        0xd838 -> :sswitch_b
        0xdbf9 -> :sswitch_a
        0x2e3a85 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
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

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 506
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "autoFocus"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "allowCopyPaste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "returnKeyType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "singleline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "confirmHold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_e
    const-string v0, "maxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_f
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_10
    const-string v0, "fontFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_11
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_12
    const-string v0, "placeholderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_13
    const-string v0, "selectionEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_14
    const-string v0, "keepSelectionIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_15
    const-string v0, "selectionStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    :goto_1
    const v0, 0x7fffffff

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 579
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 580
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 581
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    :cond_16
    return v3

    .line 573
    :pswitch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setReturnKeyType(Ljava/lang/String;)V

    return v3

    .line 547
    :pswitch_2
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 549
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setSingleLine(Z)V

    :cond_17
    :pswitch_3
    return v3

    .line 537
    :pswitch_4
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 539
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setFontSize(Ljava/lang/String;)V

    :cond_18
    return v3

    .line 593
    :pswitch_5
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    goto/16 :goto_4

    .line 506
    :pswitch_6
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 507
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 508
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCursorVisible(Z)V

    return v3

    .line 562
    :pswitch_7
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 564
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    :cond_19
    return v3

    .line 552
    :pswitch_8
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 554
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setLines(I)V

    :cond_1a
    return v3

    .line 528
    :pswitch_9
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V

    return v3

    .line 532
    :pswitch_a
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 534
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setColor(Ljava/lang/String;)V

    :cond_1b
    :pswitch_b
    return v3

    .line 557
    :pswitch_c
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 559
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    :cond_1c
    return v3

    .line 542
    :pswitch_d
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 544
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setTextAlign(Ljava/lang/String;)V

    :cond_1d
    return v3

    :pswitch_e
    if-eqz p2, :cond_1f

    .line 606
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 607
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 608
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 610
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->registerTypefaceObserver(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 613
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_2
    return v3

    .line 585
    :pswitch_f
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_20

    .line 586
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-gt p1, p2, :cond_20

    .line 587
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    goto :goto_3

    .line 588
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-le p1, p2, :cond_21

    .line 589
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    :cond_21
    :goto_3
    return v3

    .line 517
    :pswitch_10
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 519
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderColor(Ljava/lang/String;)V

    :cond_22
    return v3

    .line 600
    :pswitch_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    .line 601
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    goto :goto_4

    :pswitch_12
    return v3

    .line 596
    :pswitch_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 597
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    .line 619
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7f6b85ca -> :sswitch_15
        -0x712b3675 -> :sswitch_14
        -0x61195c51 -> :sswitch_13
        -0x5dfbd650 -> :sswitch_12
        -0x5069ecaa -> :sswitch_11
        -0x48ff636d -> :sswitch_10
        -0x3f826a28 -> :sswitch_f
        -0x2f2bce96 -> :sswitch_e
        0x1a564 -> :sswitch_d
        0x1a652 -> :sswitch_c
        0x5a72f63 -> :sswitch_b
        0x5d154d8 -> :sswitch_a
        0x6234eff -> :sswitch_9
        0x76f454a -> :sswitch_8
        0x10263a7c -> :sswitch_7
        0x1481ef9f -> :sswitch_6
        0x15caa0f0 -> :sswitch_5
        0x23a88573 -> :sswitch_4
        0x367fd03c -> :sswitch_3
        0x38797ee9 -> :sswitch_2
        0x60e3fed5 -> :sswitch_1
        0x61a2bc69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_9
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

    .line 672
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 675
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    .line 676
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

    .line 678
    :pswitch_0
    iput v6, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_1

    .line 690
    :pswitch_1
    iput v3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_1

    .line 684
    :pswitch_2
    iput v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x6

    .line 693
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_1

    .line 681
    :pswitch_4
    iput v5, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_1

    .line 687
    :pswitch_5
    iput v4, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    .line 700
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    .line 701
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

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

    .line 954
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
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

    .line 821
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_0

    return-void

    .line 824
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 828
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    .line 830
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez p1, :cond_3

    const/4 v1, 0x0

    .line 833
    :cond_3
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

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

    .line 945
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    .line 946
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

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

    .line 1227
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatReplace"

    .line 1228
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recoverRule"

    .line 1229
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "recoverReplace"

    .line 1230
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    move-result-object v0

    .line 1233
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1236
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1239
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "weex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    .line 731
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInputType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    .line 1125
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 1317
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "type"

    .line 1318
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setType(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "confirmType"

    .line 1320
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1321
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "done"

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setReturnKeyType(Ljava/lang/String;)V

    .line 1323
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1324
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1325
    :cond_4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_2
    if-eqz v1, :cond_6

    .line 1326
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 1329
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getInputType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_4

    :cond_6
    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string v0, "cursor"

    .line 1331
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1332
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    :cond_8
    const-string v0, "selectionStart"

    .line 1334
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_9

    .line 1335
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    :cond_9
    const-string v0, "selectionEnd"

    .line 1336
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1337
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    :cond_a
    const-string v0, "placeholder"

    .line 1338
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1339
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholder(Ljava/lang/String;)V

    :cond_b
    const-string v0, "placeholderClass"

    .line 1341
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "{}"

    if-eqz v1, :cond_c

    .line 1342
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_c
    const-string v0, "placeholderStyle"

    .line 1344
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1345
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_d
    const-string v0, "adjustPosition"

    .line 1347
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1348
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setAdjustPosition(Ljava/lang/Object;)V

    .line 1351
    :cond_e
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    return-void
.end method
