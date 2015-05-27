.class Lo/akp$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic bJd:Lo/akp;

.field private bJi:I

.field private bJj:D

.field private bJk:D

.field private bJl:D

.field private bJm:D


# direct methods
.method private constructor <init>(Lo/akp;)V
    .locals 2

    .line 109
    iput-object p1, p0, Lo/akp$ˋ;->bJd:Lo/akp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lo/akp$ˋ;->bJi:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp$ˋ;->bJj:D

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp$ˋ;->bJk:D

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp$ˋ;->bJl:D

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp$ˋ;->bJm:D

    return-void
.end method

.method synthetic constructor <init>(Lo/akp;Lo/akp$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lo/akp$ˋ;-><init>(Lo/akp;)V

    return-void
.end method


# virtual methods
.method public AO()D
    .locals 2

    .line 119
    iget-wide v0, p0, Lo/akp$ˋ;->bJj:D

    return-wide v0
.end method

.method public AP()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lo/akp$ˋ;->bJk:D

    return-wide v0
.end method

.method public AQ()D
    .locals 6

    .line 127
    const-wide/16 v4, 0x0

    .line 128
    iget v0, p0, Lo/akp$ˋ;->bJi:I

    if-lez v0, :cond_0

    .line 130
    iget-wide v0, p0, Lo/akp$ˋ;->bJl:D

    iget v2, p0, Lo/akp$ˋ;->bJi:I

    int-to-double v2, v2

    div-double v4, v0, v2

    .line 132
    :cond_0
    return-wide v4
.end method

.method public AR()D
    .locals 8

    .line 137
    const-wide/16 v6, 0x0

    .line 138
    iget v0, p0, Lo/akp$ˋ;->bJi:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 140
    iget-wide v0, p0, Lo/akp$ˋ;->bJm:D

    iget-wide v2, p0, Lo/akp$ˋ;->bJl:D

    iget-wide v4, p0, Lo/akp$ˋ;->bJl:D

    mul-double/2addr v2, v4

    iget v4, p0, Lo/akp$ˋ;->bJi:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget v2, p0, Lo/akp$ˋ;->bJi:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 147
    :cond_0
    return-wide v6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v0, "0.###"

    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mean "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/akp$ˋ;->AQ()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " StdDev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/akp$ˋ;->AR()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Min "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/akp$ˋ;->AO()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/akp$ˋ;->AP()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᐝ(D)V
    .locals 4

    .line 152
    iget v0, p0, Lo/akp$ˋ;->bJi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/akp$ˋ;->bJi:I

    .line 153
    iget-wide v0, p0, Lo/akp$ˋ;->bJl:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lo/akp$ˋ;->bJl:D

    .line 154
    iget-wide v0, p0, Lo/akp$ˋ;->bJm:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lo/akp$ˋ;->bJm:D

    .line 155
    iget-wide v0, p0, Lo/akp$ˋ;->bJk:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 157
    iput-wide p1, p0, Lo/akp$ˋ;->bJk:D

    .line 159
    :cond_0
    iget v0, p0, Lo/akp$ˋ;->bJi:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/akp$ˋ;->bJj:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 161
    :cond_1
    iput-wide p1, p0, Lo/akp$ˋ;->bJj:D

    .line 163
    :cond_2
    return-void
.end method
