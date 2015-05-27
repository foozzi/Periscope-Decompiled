.class public Lo/ajp;
.super Landroid/support/v7/widget/RecyclerView$ˑ;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final bHB:Landroid/widget/ImageView;

.field public final bHC:Landroid/widget/ImageView;

.field public final bHD:Landroid/widget/TextView;

.field public final bHE:Landroid/widget/TextView;

.field public final bHF:Landroid/widget/TextView;

.field public final bHG:Lo/alx;

.field public final bHH:Landroid/view/View;

.field public boA:Ltv/periscope/android/api/PsUser;

.field private final byZ:Lo/amw;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/amw;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˑ;-><init>(Landroid/view/View;)V

    .line 28
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ajp;->bHB:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f0b00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ajp;->bHC:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajp;->bHD:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0b00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajp;->bHE:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0b00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajp;->bHF:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alx;

    iput-object v0, p0, Lo/ajp;->bHG:Lo/alx;

    .line 34
    const v0, 0x7f0b00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ajp;->bHH:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lo/ajp;->byZ:Lo/amw;

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lo/ajp;->bHG:Lo/alx;

    invoke-virtual {v0, p0}, Lo/alx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lo/ajp;->boA:Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 46
    :sswitch_0
    iget-object v0, p0, Lo/ajp;->byZ:Lo/amw;

    iget-object v1, p0, Lo/ajp;->boA:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/amw;->ƚ(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 50
    :sswitch_1
    iget-object v0, p0, Lo/ajp;->boA:Ltv/periscope/android/api/PsUser;

    iget-boolean v0, v0, Ltv/periscope/android/api/PsUser;->bpE:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lo/ajp;->byZ:Lo/amw;

    iget-object v1, p0, Lo/ajp;->boA:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/amw;->ﭜ(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lo/ajp;->byZ:Lo/amw;

    iget-object v1, p0, Lo/ajp;->boA:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/amw;->ﭕ(Ljava/lang/String;)V

    .line 61
    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00fa -> :sswitch_0
        0x7f0b00fc -> :sswitch_1
    .end sparse-switch
.end method
