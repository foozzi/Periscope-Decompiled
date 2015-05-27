.class public Lo/ד;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ᖨ:Landroid/support/v7/internal/widget/SpinnerCompat;

.field final synthetic ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lo/ד;->ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    iput-object p2, p0, Lo/ד;->ᖨ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lo/ד;->ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 994
    iget-object v0, p0, Lo/ד;->ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->Ŷ:Lo/ﹹ$ˊ;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lo/ד;->ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Lo/ד;->ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    invoke-static {v1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->ˊ(Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->performItemClick(Landroid/view/View;IJ)Z

    .line 998
    :cond_0
    iget-object v0, p0, Lo/ד;->ᖪ:Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->dismiss()V

    .line 999
    return-void
.end method
