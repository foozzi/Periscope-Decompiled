.class Lo/afy$ˊ;
.super Lo/adv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ady;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lo/adv;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 79
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .line 98
    sget-object v0, Lo/vi$if;->bmx:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 99
    iget-object v0, p0, Lo/afy$ˊ;->bzc:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xs()V

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 83
    const v0, 0x7f0200bd

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 88
    const v0, 0x7f090091

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 93
    const v0, 0x7f06001d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
