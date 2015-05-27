.class public Lo/ᴴ;
.super Landroid/widget/AutoCompleteTextView;
.source ""


# static fields
.field private static final Ľ:[I


# instance fields
.field private Ӵ:Lo/৳;

.field private ᒴ:Lo/ฯ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ᴴ;->Ľ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ᴴ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    sget v0, Lo/ڊ$if;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/ᴴ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 58
    invoke-static {p1}, Lo/ڍ;->ᐝ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-boolean v0, Lo/ฯ;->ᴉ:Z

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lo/ᴴ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ᴴ;->Ľ:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    iput-object v0, p0, Lo/ᴴ;->ᒴ:Lo/ฯ;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v3}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Lo/ๅ;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ฯ;->ˣ(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {p0, v4}, Lo/ᴴ;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᴴ;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    invoke-virtual {v3}, Lo/ๅ;->recycle()V

    .line 76
    :cond_2
    return-void
.end method

.method private ﺘ()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lo/ᴴ;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    invoke-static {p0, v0}, Lo/ฯ;->ˊ(Landroid/view/View;Lo/৳;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 145
    invoke-direct {p0}, Lo/ᴴ;->ﺘ()V

    .line 146
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/ᴴ;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᴴ;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lo/৳;

    invoke-direct {v0}, Lo/৳;-><init>()V

    iput-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    .line 95
    :cond_0
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    iput-object p1, v0, Lo/৳;->Ϊ:Landroid/content/res/ColorStateList;

    .line 96
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/৳;->ᘧ:Z

    .line 98
    invoke-direct {p0}, Lo/ᴴ;->ﺘ()V

    .line 99
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lo/৳;

    invoke-direct {v0}, Lo/৳;-><init>()V

    iput-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    .line 124
    :cond_0
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    iput-object p1, v0, Lo/৳;->Ї:Landroid/graphics/PorterDuff$Mode;

    .line 125
    iget-object v0, p0, Lo/ᴴ;->Ӵ:Lo/৳;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/৳;->ᘦ:Z

    .line 127
    invoke-direct {p0}, Lo/ᴴ;->ﺘ()V

    .line 128
    return-void
.end method
