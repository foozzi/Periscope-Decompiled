.class public Lo/aga;
.super Lo/adv;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ady;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lo/adv;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 12
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .line 36
    sget-object v0, Lo/vi$if;->bms:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 37
    iget-object v0, p0, Lo/aga;->bzc:Lo/ady;

    iget-object v1, p0, Lo/aga;->bwV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->Ȋ(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 16
    const v0, 0x7f0200ba

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 21
    const v0, 0x7f090044

    return v0
.end method

.method public xj()I
    .locals 1

    .line 31
    const v0, 0x7f090044

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 26
    const v0, 0x7f0600da

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
