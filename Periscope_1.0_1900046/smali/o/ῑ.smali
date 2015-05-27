.class public Lo/ῑ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ῑ$ˏ;,
        Lo/ῑ$aux;,
        Lo/ῑ$ᐝ;,
        Lo/ῑ$ˋ;,
        Lo/ῑ$ˎ;,
        Lo/ῑ$if;,
        Lo/ῑ$ˊ;
    }
.end annotation


# static fields
.field private static ﭴ:Ljava/lang/reflect/Method;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final d:Lo/ῑ$ᐝ;

.field private final e:Lo/ῑ$aux;

.field private final f:Lo/ῑ$ˏ;

.field private final g:Lo/ῑ$ˋ;

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private ᒏ:I

.field private Ḭ:I

.field private 丫:I

.field private ﭸ:Landroid/widget/PopupWindow;

.field private ﮉ:Lo/ῑ$if;

.field private ﮌ:I

.field private ﮐ:I

.field private ﱟ:I

.field private ﱡ:Z

.field private ﹽ:Landroid/graphics/Rect;

.field private ﺙ:Z

.field private ﻏ:Z

.field ﻐ:I

.field private ﻛ:Landroid/view/View;

.field private ｋ:I

.field private ﾇ:Landroid/database/DataSetObserver;

.field private ﾒ:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 80
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/ῑ;->ﭴ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v5

    .line 83
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 192
    sget v0, Lo/ڊ$if;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lo/ῑ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 203
    sget v0, Lo/ڊ$if;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/ῑ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/ῑ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x2

    iput v0, p0, Lo/ῑ;->ﮌ:I

    .line 93
    const/4 v0, -0x2

    iput v0, p0, Lo/ῑ;->ᒏ:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lo/ῑ;->Ḭ:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ῑ;->ﺙ:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ῑ;->ﻏ:Z

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Lo/ῑ;->ﻐ:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lo/ῑ;->ｋ:I

    .line 116
    new-instance v0, Lo/ῑ$ᐝ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$ᐝ;-><init>(Lo/ῑ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ;->d:Lo/ῑ$ᐝ;

    .line 117
    new-instance v0, Lo/ῑ$aux;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$aux;-><init>(Lo/ῑ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ;->e:Lo/ῑ$aux;

    .line 118
    new-instance v0, Lo/ῑ$ˏ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$ˏ;-><init>(Lo/ῑ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ;->f:Lo/ῑ$ˏ;

    .line 119
    new-instance v0, Lo/ῑ$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$ˋ;-><init>(Lo/ῑ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ;->g:Lo/ῑ$ˋ;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/ῑ;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Lo/ῑ;->mContext:Landroid/content/Context;

    .line 230
    sget-object v0, Lo/ڊ$ʽ;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 232
    sget v0, Lo/ڊ$ʽ;->ListPopupWindow_android_dropDownHorizontalOffset:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lo/ῑ;->ﮐ:I

    .line 234
    sget v0, Lo/ڊ$ʽ;->ListPopupWindow_android_dropDownVerticalOffset:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lo/ῑ;->ﱟ:I

    .line 236
    iget v0, p0, Lo/ῑ;->ﱟ:I

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ῑ;->ﱡ:Z

    .line 239
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v0, Lo/ﹿ;

    invoke-direct {v0, p1, p2, p3}, Lo/ﹿ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    .line 242
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v0, p0, Lo/ῑ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-static {v3}, Lo/ᒡ;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lo/ῑ;->丫:I

    .line 247
    return-void
.end method

.method static synthetic ˊ(Lo/ῑ;)Lo/ῑ$if;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ῑ;)Lo/ῑ$ᐝ;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ῑ;->d:Lo/ῑ$ᐝ;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ῑ;)Landroid/os/Handler;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ῑ;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ฯ()V
    .locals 3

    .line 688
    iget-object v0, p0, Lo/ῑ;->ﻛ:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lo/ῑ;->ﻛ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 690
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 691
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 692
    iget-object v0, p0, Lo/ῑ;->ﻛ:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_0
    return-void
.end method

.method private ๅ()I
    .locals 14

    .line 1049
    const/4 v7, 0x0

    .line 1051
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    if-nez v0, :cond_4

    .line 1052
    iget-object v8, p0, Lo/ῑ;->mContext:Landroid/content/Context;

    .line 1060
    new-instance v0, Lo/⁀;

    invoke-direct {v0, p0}, Lo/⁀;-><init>(Lo/ῑ;)V

    iput-object v0, p0, Lo/ῑ;->h:Ljava/lang/Runnable;

    .line 1070
    new-instance v0, Lo/ῑ$if;

    iget-boolean v1, p0, Lo/ῑ;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v8, v1}, Lo/ῑ$if;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    .line 1071
    iget-object v0, p0, Lo/ῑ;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    iget-object v1, p0, Lo/ῑ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    :cond_1
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    iget-object v1, p0, Lo/ῑ;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1075
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    iget-object v1, p0, Lo/ῑ;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1076
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setFocusable(Z)V

    .line 1077
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setFocusableInTouchMode(Z)V

    .line 1078
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    new-instance v1, Lo/⁔;

    invoke-direct {v1, p0}, Lo/⁔;-><init>(Lo/ῑ;)V

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1094
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    iget-object v1, p0, Lo/ῑ;->f:Lo/ῑ$ˏ;

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1096
    iget-object v0, p0, Lo/ῑ;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    iget-object v1, p0, Lo/ῑ;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1100
    :cond_2
    iget-object v6, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    .line 1102
    iget-object v9, p0, Lo/ῑ;->ﻛ:Landroid/view/View;

    .line 1103
    if-eqz v9, :cond_3

    .line 1106
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1109
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1113
    iget v0, p0, Lo/ῑ;->ｋ:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1115
    :sswitch_0
    invoke-virtual {v10, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1117
    goto :goto_2

    .line 1120
    :sswitch_1
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1121
    invoke-virtual {v10, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    goto :goto_2

    .line 1125
    :goto_1
    const-string v0, "ListPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hint position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ῑ;->ｋ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_2
    iget v0, p0, Lo/ῑ;->ᒏ:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1132
    const/4 v13, 0x0

    .line 1133
    invoke-virtual {v9, v12, v13}, Landroid/view/View;->measure(II)V

    .line 1135
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v0

    .line 1136
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v7, v0, v1

    .line 1139
    move-object v6, v10

    .line 1142
    :cond_3
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1143
    goto :goto_3

    .line 1144
    :cond_4
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    .line 1145
    iget-object v8, p0, Lo/ῑ;->ﻛ:Landroid/view/View;

    .line 1146
    if-eqz v8, :cond_5

    .line 1147
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v0

    .line 1149
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v7, v0, v1

    .line 1156
    :cond_5
    :goto_3
    const/4 v8, 0x0

    .line 1157
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1158
    if-eqz v9, :cond_6

    .line 1159
    iget-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1160
    iget-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v8, v0, v1

    .line 1164
    iget-boolean v0, p0, Lo/ῑ;->ﱡ:Z

    if-nez v0, :cond_7

    .line 1165
    iget-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p0, Lo/ῑ;->ﱟ:I

    goto :goto_4

    .line 1168
    :cond_6
    iget-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1172
    :cond_7
    :goto_4
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    .line 1174
    :goto_5
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lo/ῑ;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lo/ῑ;->ﱟ:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v11

    .line 1177
    iget-boolean v0, p0, Lo/ῑ;->ﺙ:Z

    if-nez v0, :cond_9

    iget v0, p0, Lo/ῑ;->ﮌ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1178
    :cond_9
    add-int v0, v11, v8

    return v0

    .line 1182
    :cond_a
    iget v0, p0, Lo/ῑ;->ᒏ:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_6

    .line 1184
    :sswitch_2
    iget-object v0, p0, Lo/ῑ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1188
    goto :goto_7

    .line 1190
    :sswitch_3
    iget-object v0, p0, Lo/ῑ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1194
    goto :goto_7

    .line 1196
    :goto_6
    iget v0, p0, Lo/ῑ;->ᒏ:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1200
    :goto_7
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    move v1, v12

    sub-int v4, v11, v7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lo/ῑ$if;->ˎ(IIIII)I

    move-result v13

    .line 1204
    if-lez v13, :cond_b

    add-int/2addr v7, v8

    .line 1206
    :cond_b
    add-int v0, v13, v7

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method private ᵢ(Z)V
    .locals 6

    .line 1771
    sget-object v0, Lo/ῑ;->ﭴ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1773
    :try_start_0
    sget-object v0, Lo/ῑ;->ﭴ:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    goto :goto_0

    .line 1774
    :catch_0
    move-exception v5

    .line 1775
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 747
    iget-object v1, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    .line 748
    if-eqz v1, :cond_0

    .line 750
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lo/ῑ$if;->ˊ(Lo/ῑ$if;Z)Z

    .line 752
    invoke-virtual {v1}, Lo/ῑ$if;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 671
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 672
    invoke-direct {p0}, Lo/ῑ;->ฯ()V

    .line 673
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    .line 675
    iget-object v0, p0, Lo/ῑ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ῑ;->d:Lo/ῑ$ᐝ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 425
    iget-object v0, p0, Lo/ῑ;->ﾒ:Landroid/view/View;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 845
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    return-object v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 768
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 760
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lo/ῑ;->ﾇ:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lo/ῑ$ˎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$ˎ;-><init>(Lo/ῑ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ;->ﾇ:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lo/ῑ;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lo/ῑ;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lo/ῑ;->ﾇ:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/ῑ;->mAdapter:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Lo/ῑ;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lo/ῑ;->ﾇ:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_2
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    iget-object v1, p0, Lo/ῑ;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lo/ῑ;->ﾒ:Landroid/view/View;

    .line 436
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3

    .line 508
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 509
    if-eqz v2, :cond_0

    .line 510
    iget-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lo/ῑ;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lo/ῑ;->ᒏ:I

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0, p1}, Lo/ῑ;->setWidth(I)V

    .line 515
    :goto_0
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 481
    iput p1, p0, Lo/ῑ;->Ḭ:I

    .line 482
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 451
    iput p1, p0, Lo/ῑ;->ﮐ:I

    .line 452
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 710
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 711
    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .line 304
    iput-boolean p1, p0, Lo/ῑ;->i:Z

    .line 305
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lo/ῑ;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 542
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 281
    iput p1, p0, Lo/ῑ;->ｋ:I

    .line 282
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 470
    iput p1, p0, Lo/ῑ;->ﱟ:I

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ῑ;->ﱡ:Z

    .line 472
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 498
    iput p1, p0, Lo/ῑ;->ᒏ:I

    .line 499
    return-void
.end method

.method public show()V
    .locals 10

    .line 584
    invoke-direct {p0}, Lo/ῑ;->ๅ()I

    move-result v6

    .line 586
    const/4 v7, 0x0

    .line 587
    const/4 v8, 0x0

    .line 589
    invoke-virtual {p0}, Lo/ῑ;->isInputMethodNotNeeded()Z

    move-result v9

    .line 591
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 592
    iget v0, p0, Lo/ῑ;->ᒏ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 595
    const/4 v7, -0x1

    goto :goto_0

    .line 596
    :cond_0
    iget v0, p0, Lo/ῑ;->ᒏ:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 597
    invoke-virtual {p0}, Lo/ῑ;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_0

    .line 599
    :cond_1
    iget v7, p0, Lo/ῑ;->ᒏ:I

    .line 602
    :goto_0
    iget v0, p0, Lo/ῑ;->ﮌ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 605
    if-eqz v9, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    .line 606
    :goto_1
    if-eqz v9, :cond_4

    .line 607
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget v1, p0, Lo/ῑ;->ᒏ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    .line 611
    :cond_4
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget v1, p0, Lo/ῑ;->ᒏ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const/4 v1, -0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    .line 616
    :cond_6
    iget v0, p0, Lo/ῑ;->ﮌ:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 617
    move v8, v6

    goto :goto_4

    .line 619
    :cond_7
    iget v8, p0, Lo/ῑ;->ﮌ:I

    .line 622
    :goto_4
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lo/ῑ;->ﻏ:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lo/ῑ;->ﺙ:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lo/ῑ;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lo/ῑ;->ﮐ:I

    iget v3, p0, Lo/ῑ;->ﱟ:I

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_9

    .line 627
    :cond_9
    iget v0, p0, Lo/ῑ;->ᒏ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 628
    const/4 v7, -0x1

    goto :goto_6

    .line 630
    :cond_a
    iget v0, p0, Lo/ῑ;->ᒏ:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 631
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lo/ῑ;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_6

    .line 633
    :cond_b
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget v1, p0, Lo/ῑ;->ᒏ:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 637
    :goto_6
    iget v0, p0, Lo/ῑ;->ﮌ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 638
    const/4 v8, -0x1

    goto :goto_7

    .line 640
    :cond_c
    iget v0, p0, Lo/ῑ;->ﮌ:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    .line 641
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_7

    .line 643
    :cond_d
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget v1, p0, Lo/ῑ;->ﮌ:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 647
    :goto_7
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 648
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ῑ;->ᵢ(Z)V

    .line 652
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lo/ῑ;->ﻏ:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lo/ῑ;->ﺙ:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lo/ῑ;->e:Lo/ῑ$aux;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v0, p0, Lo/ῑ;->ﭸ:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lo/ῑ;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lo/ῑ;->ﮐ:I

    iget v3, p0, Lo/ῑ;->ﱟ:I

    iget v4, p0, Lo/ῑ;->Ḭ:I

    invoke-static {v0, v1, v2, v3, v4}, Lo/ᴊ;->ˊ(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lo/ῑ$if;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Lo/ῑ;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lo/ῑ;->ﮉ:Lo/ῑ$if;

    invoke-virtual {v0}, Lo/ῑ$if;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 659
    :cond_f
    invoke-virtual {p0}, Lo/ῑ;->clearListSelection()V

    .line 661
    :cond_10
    iget-boolean v0, p0, Lo/ῑ;->i:Z

    if-nez v0, :cond_11

    .line 662
    iget-object v0, p0, Lo/ῑ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ῑ;->g:Lo/ῑ$ˋ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    :cond_11
    :goto_9
    return-void
.end method
