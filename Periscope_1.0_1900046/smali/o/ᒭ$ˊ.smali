.class Lo/ᒭ$ˊ;
.super Lo/ᒌ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒭ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic uJ:Lo/ᒭ;


# direct methods
.method public constructor <init>(Lo/ᒭ;Lo/ʎ;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lo/ᒭ$ˊ;->uJ:Lo/ᒭ;

    .line 548
    invoke-direct {p0, p2}, Lo/ᒌ;-><init>(Lo/ʎ;)V

    .line 549
    return-void
.end method


# virtual methods
.method public ˊ(JIII[B)V
    .locals 1

    .line 553
    invoke-super/range {p0 .. p6}, Lo/ᒌ;->ˊ(JIII[B)V

    .line 554
    iget-object v0, p0, Lo/ᒭ$ˊ;->uJ:Lo/ᒭ;

    invoke-static {v0}, Lo/ᒭ;->ˊ(Lo/ᒭ;)I

    .line 555
    return-void
.end method
