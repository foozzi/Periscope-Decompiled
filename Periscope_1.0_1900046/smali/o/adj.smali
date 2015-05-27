.class public Lo/adj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/als;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adj$1;
    }
.end annotation


# instance fields
.field private final bnA:Lo/aad;

.field private final brN:Lo/vn;

.field private final byD:Lo/alo;

.field private final byE:Lo/als$if;

.field private final byF:Landroid/content/DialogInterface$OnClickListener;

.field private final byG:Landroid/content/DialogInterface$OnCancelListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V
    .locals 6

    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;Lo/als$if;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;Lo/als$if;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/adk;

    invoke-direct {v0, p0}, Lo/adk;-><init>(Lo/adj;)V

    iput-object v0, p0, Lo/adj;->byF:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    new-instance v0, Lo/adl;

    invoke-direct {v0, p0}, Lo/adl;-><init>(Lo/adj;)V

    iput-object v0, p0, Lo/adj;->byG:Landroid/content/DialogInterface$OnCancelListener;

    .line 50
    iput-object p1, p0, Lo/adj;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lo/adj;->brN:Lo/vn;

    .line 52
    iput-object p3, p0, Lo/adj;->bnA:Lo/aad;

    .line 53
    iput-object p4, p0, Lo/adj;->byD:Lo/alo;

    .line 54
    iput-object p5, p0, Lo/adj;->byE:Lo/als$if;

    .line 55
    return-void
.end method

.method private Ǐ(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/adj;->byE:Lo/als$if;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/adj;->byE:Lo/als$if;

    invoke-interface {v0}, Lo/als$if;->Ak()V

    .line 92
    :cond_0
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0, p1}, Lo/alo;->ᵇ(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic ˊ(Lo/adj;)Lo/vn;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/adj;->brN:Lo/vn;

    return-object v0
.end method


# virtual methods
.method public onEventMainThread(Lo/aai;)V
    .locals 3

    .line 172
    sget-object v0, Lo/adj$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 174
    :sswitch_0
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/ww;

    move-object v2, v0

    .line 177
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->BB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lo/ww;->boA:Ltv/periscope/android/api/PsUser;

    iget-object v0, v0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v1, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v1}, Lo/alo;->BB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    iget-object v1, v2, Lo/ww;->boA:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0, v1}, Lo/alo;->ᐝ(Ltv/periscope/android/api/PsUser;)V

    .line 185
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 150
    sget-object v0, Lo/adj$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->Av()V

    .line 154
    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->BA()V

    .line 168
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public wY()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/adj;->Ǐ(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ſ(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/adj;->brN:Lo/vn;

    invoke-virtual {v0, p1}, Lo/vn;->ᒼ(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    return-void
.end method

.method public Ɨ(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/adj;->brN:Lo/vn;

    invoke-virtual {v0, p1}, Lo/vn;->ᓑ(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    return-void
.end method

.method public ƚ(Ljava/lang/String;)V
    .locals 2

    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/adj;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lo/vi$if;->bmQ:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lo/vi$if;->bmR:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, p1}, Lo/adj;->Ǐ(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p0, Lo/adj;->brN:Lo/vn;

    invoke-virtual {v0, p1}, Lo/vn;->ว(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->clear()V

    .line 80
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    iget-object v1, p0, Lo/adj;->bnA:Lo/aad;

    invoke-virtual {v1, p1}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/alo;->ᐝ(Ltv/periscope/android/api/PsUser;)V

    .line 81
    iget-object v0, p0, Lo/adj;->byE:Lo/als$if;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lo/adj;->byE:Lo/als$if;

    invoke-interface {v0}, Lo/als$if;->Aj()V

    .line 84
    :cond_2
    iget-object v0, p0, Lo/adj;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->show()V

    .line 86
    :goto_1
    return-void
.end method

.method public ʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lo/adj;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/adj;->mContext:Landroid/content/Context;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/adj;->byF:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f060029

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/adm;

    invoke-direct {v1, p0, p1}, Lo/adm;-><init>(Lo/adj;Ljava/lang/String;)V

    const v2, 0x7f060027

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/adj;->byG:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 130
    return-void
.end method

.method public ﭕ(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/adj;->brN:Lo/vn;

    invoke-virtual {v0, p1}, Lo/vn;->ᐦ(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    return-void
.end method

.method public ﭜ(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/adj;->brN:Lo/vn;

    invoke-virtual {v0, p1}, Lo/vn;->ᒄ(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    return-void
.end method

.method public ﭤ(Ljava/lang/String;)V
    .locals 3

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lo/adj;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/adj;->mContext:Landroid/content/Context;

    const v2, 0x7f060102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/adn;

    invoke-direct {v1, p0, p1}, Lo/adn;-><init>(Lo/adj;Ljava/lang/String;)V

    const v2, 0x7f060101

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    return-void
.end method
