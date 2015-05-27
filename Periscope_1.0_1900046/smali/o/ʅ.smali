.class public Lo/ʅ;
.super Lo/ῑ$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ᒵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

.field final synthetic ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lo/ʅ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Lo/ʅ;->ᒵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    invoke-direct {p0, p2}, Lo/ῑ$ˊ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public Ӏ()Lo/ῑ;
    .locals 1

    .line 194
    iget-object v0, p0, Lo/ʅ;->ᒵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    return-object v0
.end method

.method public ײ()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lo/ʅ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ˊ(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lo/ʅ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ˊ(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->show()V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
