.class Lo/Ỵ$if;
.super Lo/ঢ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ỵ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field public final yc:Ljava/lang/String;

.field private yd:[B


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;[BLjava/lang/String;)V
    .locals 7

    .line 643
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ঢ;-><init>(Lo/ϒ;Lo/к;IILo/ব;[B)V

    .line 644
    iput-object p4, p0, Lo/Ỵ$if;->yc:Ljava/lang/String;

    .line 645
    return-void
.end method


# virtual methods
.method protected ˊ([BI)V
    .locals 1

    .line 649
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo/Ỵ$if;->yd:[B

    .line 650
    return-void
.end method

.method public ῗ()[B
    .locals 1

    .line 653
    iget-object v0, p0, Lo/Ỵ$if;->yd:[B

    return-object v0
.end method
