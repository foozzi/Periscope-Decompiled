.class public Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;
.super Lo/ῑ;
.source ""

# interfaces
.implements Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/SpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u02cb"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field public final synthetic ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private ᖧ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 983
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 984
    invoke-direct {p0, p2, p3, p4}, Lo/ῑ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 986
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->setAnchorView(Landroid/view/View;)V

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->setModal(Z)V

    .line 988
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->setPromptPosition(I)V

    .line 990
    new-instance v0, Lo/ד;

    invoke-direct {v0, p0, p1}, Lo/ד;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;Landroid/support/v7/internal/widget/SpinnerCompat;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1001
    return-void
.end method

.method public static synthetic ˊ(Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;)Landroid/widget/ListAdapter;
    .locals 1

    .line 976
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1005
    invoke-super {p0, p1}, Lo/ῑ;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1006
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->mAdapter:Landroid/widget/ListAdapter;

    .line 1007
    return-void
.end method

.method public ʼ(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->ᖧ:Ljava/lang/CharSequence;

    .line 1016
    return-void
.end method
