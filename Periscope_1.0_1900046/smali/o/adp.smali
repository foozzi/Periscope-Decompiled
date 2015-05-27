.class public Lo/adp;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/amh$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adp$1;
    }
.end annotation


# instance fields
.field private bxX:Lo/acz;

.field private byM:Lo/amh;

.field private byN:Lo/amh;

.field private byO:Lo/amh;

.field private byP:Lo/amh;

.field private byQ:Lo/amh;

.field private byR:Lo/amt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 163
    return-void
.end method

.method private setUp()V
    .locals 2

    .line 40
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lo/adp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amt;

    iput-object v0, p0, Lo/adp;->byR:Lo/amt;

    .line 41
    iget-object v0, p0, Lo/adp;->byR:Lo/amt;

    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Lo/amt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lo/adp;->byR:Lo/amt;

    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Lo/amt;->setTitle(I)V

    .line 44
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Lo/adp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amh;

    iput-object v0, p0, Lo/adp;->byM:Lo/amh;

    .line 45
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Lo/adp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amh;

    iput-object v0, p0, Lo/adp;->byN:Lo/amh;

    .line 46
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Lo/adp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amh;

    iput-object v0, p0, Lo/adp;->byO:Lo/amh;

    .line 47
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lo/adp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amh;

    iput-object v0, p0, Lo/adp;->byP:Lo/amh;

    .line 48
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lo/adp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amh;

    iput-object v0, p0, Lo/adp;->byQ:Lo/amh;

    .line 49
    return-void
.end method

.method private xb()V
    .locals 3

    .line 52
    iget-object v0, p0, Lo/adp;->bxX:Lo/acz;

    invoke-virtual {v0}, Lo/acz;->wS()Lo/acy;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lo/adp;->byM:Lo/amh;

    iget-boolean v1, v2, Lo/acy;->byh:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lo/adp;->byN:Lo/amh;

    iget-boolean v1, v2, Lo/acy;->byi:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 55
    iget-object v0, p0, Lo/adp;->byO:Lo/amh;

    iget-boolean v1, v2, Lo/acy;->byj:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lo/adp;->byP:Lo/amh;

    iget-boolean v1, v2, Lo/acy;->byk:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lo/adp;->byQ:Lo/amh;

    iget-boolean v1, v2, Lo/acy;->byl:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 58
    invoke-virtual {p0}, Lo/adp;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tZ()Ljava/lang/String;

    .line 59
    return-void
.end method

.method private xc()V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/adp;->byM:Lo/amh;

    invoke-virtual {v0, p0}, Lo/amh;->setOnCheckedChangeListener(Lo/amh$if;)V

    .line 63
    iget-object v0, p0, Lo/adp;->byN:Lo/amh;

    invoke-virtual {v0, p0}, Lo/amh;->setOnCheckedChangeListener(Lo/amh$if;)V

    .line 64
    iget-object v0, p0, Lo/adp;->byO:Lo/amh;

    invoke-virtual {v0, p0}, Lo/amh;->setOnCheckedChangeListener(Lo/amh$if;)V

    .line 65
    iget-object v0, p0, Lo/adp;->byP:Lo/amh;

    invoke-virtual {v0, p0}, Lo/amh;->setOnCheckedChangeListener(Lo/amh$if;)V

    .line 66
    iget-object v0, p0, Lo/adp;->byQ:Lo/amh;

    invoke-virtual {v0, p0}, Lo/amh;->setOnCheckedChangeListener(Lo/amh$if;)V

    .line 67
    return-void
.end method

.method private xd()V
    .locals 7

    .line 132
    iget-object v0, p0, Lo/adp;->bxX:Lo/acz;

    new-instance v1, Lo/acy;

    iget-object v2, p0, Lo/adp;->byM:Lo/amh;

    invoke-virtual {v2}, Lo/amh;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lo/adp;->byN:Lo/amh;

    invoke-virtual {v3}, Lo/amh;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lo/adp;->byO:Lo/amh;

    invoke-virtual {v4}, Lo/amh;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lo/adp;->byP:Lo/amh;

    invoke-virtual {v5}, Lo/amh;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lo/adp;->byQ:Lo/amh;

    invoke-virtual {v6}, Lo/amh;->isChecked()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lo/acy;-><init>(ZZZZZ)V

    invoke-virtual {v0, v1}, Lo/acz;->ˊ(Lo/acy;)V

    .line 140
    return-void
.end method

.method private ˋ(Lo/amh;Z)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Lo/amh;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    if-eqz p2, :cond_0

    .line 82
    sget-object v1, Lo/vi$if;->blI:Lo/vi$if;

    goto :goto_1

    .line 84
    :cond_0
    sget-object v1, Lo/vi$if;->blJ:Lo/vi$if;

    .line 86
    goto :goto_1

    .line 89
    :pswitch_1
    if-eqz p2, :cond_1

    .line 90
    sget-object v1, Lo/vi$if;->blK:Lo/vi$if;

    goto :goto_1

    .line 92
    :cond_1
    sget-object v1, Lo/vi$if;->blL:Lo/vi$if;

    .line 94
    goto :goto_1

    .line 97
    :pswitch_2
    if-eqz p2, :cond_2

    .line 98
    sget-object v1, Lo/vi$if;->blG:Lo/vi$if;

    goto :goto_1

    .line 100
    :cond_2
    sget-object v1, Lo/vi$if;->blH:Lo/vi$if;

    .line 102
    goto :goto_1

    .line 105
    :pswitch_3
    if-eqz p2, :cond_3

    .line 106
    sget-object v1, Lo/vi$if;->blM:Lo/vi$if;

    goto :goto_1

    .line 108
    :cond_3
    sget-object v1, Lo/vi$if;->blN:Lo/vi$if;

    .line 110
    goto :goto_1

    .line 113
    :pswitch_4
    if-eqz p2, :cond_4

    .line 114
    sget-object v1, Lo/vi$if;->blE:Lo/vi$if;

    goto :goto_1

    .line 116
    :cond_4
    sget-object v1, Lo/vi$if;->blF:Lo/vi$if;

    .line 118
    goto :goto_1

    .line 121
    :goto_0
    const/4 v1, 0x0

    .line 126
    :goto_1
    if-eqz v1, :cond_5

    .line 127
    invoke-static {v1}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 129
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00f3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 170
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 171
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/adp;->overridePendingTransition(II)V

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lo/adp;->finish()V

    .line 177
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/adp;->overridePendingTransition(II)V

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lo/acz;

    invoke-direct {v0, p0}, Lo/acz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/adp;->bxX:Lo/acz;

    .line 31
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lo/adp;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lo/adp;->setUp()V

    .line 34
    invoke-direct {p0}, Lo/adp;->xb()V

    .line 36
    invoke-direct {p0}, Lo/adp;->xc()V

    .line 37
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 3

    .line 144
    sget-object v0, Lo/adp$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 146
    :sswitch_0
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const v0, 0x7f060080

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :sswitch_1
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/wu;

    move-object v2, v0

    .line 159
    iget-object v0, p0, Lo/adp;->byQ:Lo/amh;

    iget-boolean v1, v2, Lo/wu;->boz:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lo/adp;->byO:Lo/amh;

    iget-boolean v1, v2, Lo/wu;->boy:Z

    invoke-virtual {v0, v1}, Lo/amh;->setChecked(Z)V

    .line 161
    invoke-direct {p0}, Lo/adp;->xd()V

    .line 166
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public ˊ(Lo/amh;Z)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2}, Lo/adp;->ˋ(Lo/amh;Z)V

    .line 73
    invoke-direct {p0}, Lo/adp;->xd()V

    .line 74
    invoke-virtual {p0}, Lo/adp;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/adp;->byO:Lo/amh;

    invoke-virtual {v1}, Lo/amh;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lo/adp;->byQ:Lo/amh;

    invoke-virtual {v2}, Lo/amh;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/vn;->ʼ(ZZ)Ljava/lang/String;

    .line 75
    return-void
.end method
