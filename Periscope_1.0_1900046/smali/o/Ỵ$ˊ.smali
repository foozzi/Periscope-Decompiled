.class Lo/Ỵ$ˊ;
.super Lo/ঢ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ỵ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final xJ:Lo/イ;

.field public final ye:I

.field private final yf:Ljava/lang/String;

.field private yg:Lo/ῗ;


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;[BLo/イ;ILjava/lang/String;)V
    .locals 7

    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ঢ;-><init>(Lo/ϒ;Lo/к;IILo/ব;[B)V

    .line 618
    iput p5, p0, Lo/Ỵ$ˊ;->ye:I

    .line 619
    iput-object p4, p0, Lo/Ỵ$ˊ;->xJ:Lo/イ;

    .line 620
    iput-object p6, p0, Lo/Ỵ$ˊ;->yf:Ljava/lang/String;

    .line 621
    return-void
.end method


# virtual methods
.method protected ˊ([BI)V
    .locals 4

    .line 625
    iget-object v0, p0, Lo/Ỵ$ˊ;->xJ:Lo/イ;

    iget-object v1, p0, Lo/Ỵ$ˊ;->yf:Ljava/lang/String;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v1, v2}, Lo/イ;->ˊ(Ljava/lang/String;Ljava/io/InputStream;)Lo/ゞ;

    move-result-object v0

    check-cast v0, Lo/ῗ;

    iput-object v0, p0, Lo/Ỵ$ˊ;->yg:Lo/ῗ;

    .line 627
    return-void
.end method

.method public ℓ()Lo/ῗ;
    .locals 1

    .line 630
    iget-object v0, p0, Lo/Ỵ$ˊ;->yg:Lo/ῗ;

    return-object v0
.end method
