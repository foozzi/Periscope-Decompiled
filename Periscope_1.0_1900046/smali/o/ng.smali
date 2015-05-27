.class public Lo/ng;
.super Landroid/widget/Button;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ng$1;,
        Lo/ng$if;
    }
.end annotation


# instance fields
.field final QT:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
        }
    .end annotation
.end field

.field volatile QU:Lo/nf;

.field QV:Landroid/view/View$OnClickListener;

.field Qz:Lo/lz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/lz<Lo/mr;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ng;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lo/ng;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/ng;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/nf;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/nf;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lo/ng;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ng;->QT:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p4, p0, Lo/ng;->QU:Lo/nf;

    .line 58
    invoke-direct {p0}, Lo/ng;->bz()V

    .line 60
    invoke-direct {p0}, Lo/ng;->bB()V

    .line 61
    return-void
.end method

.method private bB()V
    .locals 4

    .line 179
    invoke-virtual {p0}, Lo/ng;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    :try_start_0
    invoke-static {}, Lo/mn;->bd()Lo/mn;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 183
    :catch_0
    move-exception v3

    .line 185
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ng;->setEnabled(Z)V

    .line 188
    :goto_0
    return-void
.end method

.method private bz()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 65
    invoke-virtual {p0}, Lo/ng;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 66
    sget v0, Lo/me$ˋ;->tw__ic_logo_default:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    sget v0, Lo/me$ˊ;->tw__login_btn_drawable_padding:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 70
    sget v0, Lo/me$ᐝ;->tw__login_btn_txt:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 71
    sget v0, Lo/me$if;->tw__solid_white:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 72
    sget v0, Lo/me$ˊ;->tw__login_btn_text_size:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 74
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-super {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    sget v0, Lo/me$ˊ;->tw__login_btn_left_padding:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lo/me$ˊ;->tw__login_btn_right_padding:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0, v0, v2, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 77
    sget v0, Lo/me$ˋ;->tw__login_btn:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 78
    new-instance v0, Lo/ng$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ng$if;-><init>(Lo/ng;Lo/ng$1;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method bA()Lo/nf;
    .locals 3

    .line 167
    iget-object v0, p0, Lo/ng;->QU:Lo/nf;

    if-nez v0, :cond_1

    .line 168
    const-class v1, Lo/ng;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lo/ng;->QU:Lo/nf;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lo/nf;

    invoke-direct {v0}, Lo/nf;-><init>()V

    iput-object v0, p0, Lo/ng;->QU:Lo/nf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 174
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/ng;->QU:Lo/nf;

    return-object v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lo/ng;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lo/ng;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lo/ng;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lo/ng;->bA()Lo/nf;

    move-result-object v0

    invoke-virtual {v0}, Lo/nf;->bc()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lo/ng;->bA()Lo/nf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/nf;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setCallback(Lo/lz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/lz<Lo/mr;>;)V"
        }
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lo/ng;->Qz:Lo/lz;

    .line 95
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/ng;->QV:Landroid/view/View$OnClickListener;

    .line 135
    return-void
.end method
