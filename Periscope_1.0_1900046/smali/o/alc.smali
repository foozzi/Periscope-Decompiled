.class public Lo/alc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bKk:J

.field private bLu:I

.field private bLv:I

.field private bLw:[Ljava/lang/Object;

.field private bLx:Lo/akz;

.field private bjf:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/alc;->bKk:J

    .line 34
    iput p2, p0, Lo/alc;->bLu:I

    .line 35
    iput p3, p0, Lo/alc;->bLv:I

    .line 36
    iput p1, p0, Lo/alc;->bjf:I

    .line 37
    return-void
.end method


# virtual methods
.method public Bp()I
    .locals 1

    .line 48
    iget v0, p0, Lo/alc;->bLu:I

    return v0
.end method

.method public Bq()I
    .locals 1

    .line 58
    iget v0, p0, Lo/alc;->bLv:I

    return v0
.end method

.method public Br()Lo/akz;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/alc;->bLx:Lo/akz;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lo/akz;

    invoke-direct {v0}, Lo/akz;-><init>()V

    iput-object v0, p0, Lo/alc;->bLx:Lo/akz;

    .line 83
    :cond_0
    iget-object v0, p0, Lo/alc;->bLx:Lo/akz;

    return-object v0
.end method

.method public Bs()Lo/akz;
    .locals 2

    .line 94
    iget-object v1, p0, Lo/alc;->bLx:Lo/akz;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lo/alc;->bLx:Lo/akz;

    .line 96
    return-object v1
.end method

.method public Bt()V
    .locals 2

    .line 106
    iget v0, p0, Lo/alc;->bjf:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/alc;->bjf:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lo/alc;->bLx:Lo/akz;

    iget-object v0, v0, Lo/akz;->buffer:[B

    iget-object v1, p0, Lo/alc;->bLx:Lo/akz;

    iget v1, v1, Lo/akz;->length:I

    invoke-static {v0, v1}, Lo/akt;->ᐪ([BI)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/alc;->bLw:[Ljava/lang/Object;

    .line 110
    :cond_1
    return-void
.end method

.method public Bu()[Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/alc;->bLw:[Ljava/lang/Object;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lo/alc;->bKk:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 53
    iget v0, p0, Lo/alc;->bjf:I

    return v0
.end method

.method public setTime(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lo/alc;->bKk:J

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTMPMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/alc;->bjf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " csid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/alc;->bLu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/alc;->bLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/alc;->bKk:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    iget-object v0, p0, Lo/alc;->bLw:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lo/alc;->bLw:[Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    iget-object v0, p0, Lo/alc;->bLx:Lo/akz;

    iget v0, v0, Lo/akz;->length:I

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 132
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/alc;->bLx:Lo/akz;

    iget-object v1, v1, Lo/akz;->buffer:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    :cond_2
    :goto_2
    return-object v3
.end method

.method public ˎ(Lo/akz;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lo/alc;->bLx:Lo/akz;

    .line 102
    return-void
.end method

.method public ˎ([Ljava/lang/Object;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lo/alc;->bLw:[Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Lo/akt;->ˋ([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/alc;->ᓫ([B)V

    .line 75
    return-void
.end method

.method public ˮ(III)V
    .locals 0

    .line 41
    iput p2, p0, Lo/alc;->bLu:I

    .line 42
    iput p3, p0, Lo/alc;->bLv:I

    .line 43
    iput p1, p0, Lo/alc;->bjf:I

    .line 44
    return-void
.end method

.method public ᓫ([B)V
    .locals 1

    .line 89
    new-instance v0, Lo/akz;

    invoke-direct {v0, p1}, Lo/akz;-><init>([B)V

    iput-object v0, p0, Lo/alc;->bLx:Lo/akz;

    .line 90
    return-void
.end method
