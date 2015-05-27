.class public Lo/agb;
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

    .line 43
    iget-object v0, p0, Lo/agb;->bzc:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lo/vi$if;->bmq:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 45
    iget-object v0, p0, Lo/agb;->bzc:Lo/ady;

    iget-object v1, p0, Lo/agb;->bwV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->ױ(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 16
    iget-object v0, p0, Lo/agb;->bzc:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    return v0

    .line 19
    :cond_0
    const v0, 0x7f02009d

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 25
    iget-object v0, p0, Lo/agb;->bzc:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    const v0, 0x7f090091

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/agb;->bzc:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f06001c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    const v0, 0x7f06001b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
