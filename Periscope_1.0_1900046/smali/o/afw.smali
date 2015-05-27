.class public Lo/afw;
.super Lo/adv;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ady;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lo/adv;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lo/afw;->bzc:Lo/ady;

    iget-object v1, p0, Lo/afw;->bwV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->ʅ(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 15
    const v0, 0x7f0200be

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 20
    const v0, 0x7f090044

    return v0
.end method

.method public xi()I
    .locals 1

    .line 30
    const v0, 0x7f090044

    return v0
.end method

.method public xj()I
    .locals 1

    .line 35
    const v0, 0x7f090044

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 25
    const v0, 0x7f060016

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
