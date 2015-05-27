.class public Lo/aiz;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aiz$1;,
        Lo/aiz$if;
    }
.end annotation


# instance fields
.field private bGQ:Lo/ng;

.field private bGR:Z

.field private bGS:Z

.field private bGT:Landroid/app/ProgressDialog;

.field private bnA:Lo/aad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic ˊ(Lo/aiz;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 31
    iput-object p1, p0, Lo/aiz;->bGT:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic ˊ(Lo/aiz;)Lo/aad;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/aiz;->bnA:Lo/aad;

    return-object v0
.end method

.method static synthetic ˋ(Lo/aiz;)Lo/vn;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lo/aiz;->wZ()Lo/vn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˎ(Lo/aiz;)Landroid/app/ProgressDialog;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/aiz;->bGT:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private ٲ(I)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/periscope/android/ui/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pager_pos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/aiz;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lo/aiz;->finish()V

    .line 46
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 60
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 62
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/aiz;->ٲ(I)V

    .line 63
    goto :goto_1

    .line 66
    :goto_0
    iget-object v0, p0, Lo/aiz;->bGQ:Lo/ng;

    invoke-virtual {v0, p1, p2, p3}, Lo/ng;->onActivityResult(IILandroid/content/Intent;)V

    .line 67
    if-nez p2, :cond_0

    .line 69
    sget-object v0, Lo/vi$if;->blT:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 74
    :cond_0
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf198e -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 126
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aiz;->bGR:Z

    .line 127
    sget-object v0, Lo/vi$if;->blS:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 131
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00c4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Lo/aiz;->bnA:Lo/aad;

    .line 52
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lo/aiz;->setContentView(I)V

    .line 53
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lo/aiz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ng;

    iput-object v0, p0, Lo/aiz;->bGQ:Lo/ng;

    .line 54
    iget-object v0, p0, Lo/aiz;->bGQ:Lo/ng;

    new-instance v1, Lo/aiz$if;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/aiz$if;-><init>(Lo/aiz;Lo/aiz$1;)V

    invoke-virtual {v0, v1}, Lo/ng;->setCallback(Lo/lz;)V

    .line 55
    iget-object v0, p0, Lo/aiz;->bGQ:Lo/ng;

    invoke-virtual {v0, p0}, Lo/ng;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lo/aiz;->bGS:Z

    if-nez v0, :cond_1

    .line 79
    iget-boolean v0, p0, Lo/aiz;->bGR:Z

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lo/vi$if;->blT:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lo/vi$if;->blU:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 85
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/ado;->onDestroy()V

    .line 86
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 5

    .line 90
    sget-object v0, Lo/aiz$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 92
    :sswitch_0
    iget-object v0, p0, Lo/aiz;->bGT:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 93
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aiz;->bGS:Z

    .line 96
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/ye;

    move-object v2, v0

    .line 98
    iget-object v0, v2, Lo/ye;->bqd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lo/aiz;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vk()V

    .line 100
    invoke-static {}, Lo/vf;->tK()Lo/acm;

    move-result-object v3

    .line 102
    :try_start_0
    invoke-virtual {v3}, Lo/acm;->ژ()V
    :try_end_0
    .catch Lo/acn; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v4

    .line 104
    const-string v0, "LoginActivity"

    const-string v1, "Failed to register push"

    invoke-static {v0, v1, v4}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/aiz;->ٲ(I)V

    .line 107
    goto :goto_1

    .line 109
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lo/aiq;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v0, "e_user"

    iget-object v1, v2, Lo/ye;->boA:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string v0, "e_suggested"

    iget-object v1, v2, Lo/ye;->bqd:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const v0, 0xf198e

    invoke-virtual {p0, v3, v0}, Lo/aiz;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    :goto_1
    goto :goto_2

    .line 115
    :cond_1
    invoke-virtual {p1}, Lo/aai;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method
