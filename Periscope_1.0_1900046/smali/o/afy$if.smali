.class Lo/afy$if;
.super Lo/adv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ady;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/adv;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 50
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .line 69
    sget-object v0, Lo/vi$if;->bmw:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 70
    iget-object v0, p0, Lo/afy$if;->bzc:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xr()V

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 54
    const v0, 0x7f0200a1

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 59
    const v0, 0x7f090091

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 64
    const v0, 0x7f060017

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
