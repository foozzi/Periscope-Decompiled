.class Lo/akp$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic bJd:Lo/akp;

.field private final bJe:D

.field private bJf:D

.field private bJg:J

.field private bJh:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<Lo/akp$\u02ce;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/akp;D)V
    .locals 2

    .line 65
    iput-object p1, p0, Lo/akp$ˊ;->bJd:Lo/akp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp$ˊ;->bJf:D

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp$ˊ;->bJg:J

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    .line 66
    iput-wide p2, p0, Lo/akp$ˊ;->bJe:D

    .line 67
    return-void
.end method


# virtual methods
.method public AM()I
    .locals 5

    .line 90
    const/4 v4, 0x0

    .line 91
    iget-wide v0, p0, Lo/akp$ˊ;->bJf:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    iget-wide v0, p0, Lo/akp$ˊ;->bJg:J

    long-to-double v0, v0

    iget-wide v2, p0, Lo/akp$ˊ;->bJf:D

    div-double/2addr v0, v2

    double-to-int v4, v0

    .line 95
    :cond_0
    return v4
.end method

.method public AN()D
    .locals 6

    .line 99
    const-wide/16 v4, 0x0

    .line 100
    iget-object v0, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 102
    iget-wide v0, p0, Lo/akp$ˊ;->bJf:D

    iget-object v2, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double v4, v0, v2

    .line 104
    :cond_0
    return-wide v4
.end method

.method public ˊ(DI)V
    .locals 5

    .line 71
    iget-object v0, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    new-instance v1, Lo/akp$ˎ;

    iget-object v2, p0, Lo/akp$ˊ;->bJd:Lo/akp;

    invoke-direct {v1, v2, p1, p2, p3}, Lo/akp$ˎ;-><init>(Lo/akp;DI)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    iget-wide v0, p0, Lo/akp$ˊ;->bJg:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/akp$ˊ;->bJg:J

    .line 74
    :goto_0
    iget-object v0, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akp$ˎ;

    move-object v4, v0

    .line 77
    iget-wide v0, v4, Lo/akp$ˎ;->bJn:D

    sub-double v0, p1, v0

    iput-wide v0, p0, Lo/akp$ˊ;->bJf:D

    .line 78
    iget-wide v0, p0, Lo/akp$ˊ;->bJf:D

    iget-wide v2, p0, Lo/akp$ˊ;->bJe:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 80
    goto :goto_1

    .line 83
    :cond_0
    iget-wide v0, p0, Lo/akp$ˊ;->bJg:J

    iget v2, v4, Lo/akp$ˎ;->bJo:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/akp$ˊ;->bJg:J

    .line 84
    iget-object v0, p0, Lo/akp$ˊ;->bJh:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    return-void
.end method
