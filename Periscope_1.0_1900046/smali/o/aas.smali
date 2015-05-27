.class public Lo/aas;
.super Lo/aav;
.source ""


# instance fields
.field private buG:Z

.field private buH:I

.field private buI:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    .line 25
    const-string v0, "audio/mp4a-latm"

    invoke-direct {p0, p1, v0, p2}, Lo/aav;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aas;->buG:Z

    .line 26
    iput p3, p0, Lo/aas;->buH:I

    .line 27
    iput p4, p0, Lo/aas;->buI:I

    .line 28
    return-void
.end method

.method public static 丶(Ljava/lang/String;)[B
    .locals 7

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 33
    div-int/lit8 v0, v4, 0x2

    new-array v5, v0, [B

    .line 34
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 35
    div-int/lit8 v0, v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 34
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 38
    :cond_0
    return-object v5
.end method


# virtual methods
.method public ˊ(IJLo/م;Lo/ڋ;Z)I
    .locals 10

    .line 44
    if-eqz p6, :cond_0

    .line 46
    const/4 v0, -0x2

    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lo/aas;->buW:Ljava/lang/String;

    invoke-static {v0}, Lo/aas;->丶(Ljava/lang/String;)[B

    move-result-object v5

    .line 51
    iget-boolean v0, p0, Lo/aas;->buG:Z

    if-nez v0, :cond_1

    .line 53
    const-string v0, "audio/mp4a-latm"

    iget v1, p0, Lo/aas;->buH:I

    iget v2, p0, Lo/aas;->buI:I

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lo/ب;->ˋ(Ljava/lang/String;IIILjava/util/List;)Lo/ب;

    move-result-object v0

    iput-object v0, p4, Lo/م;->ry:Lo/ب;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aas;->buG:Z

    .line 55
    const/4 v0, -0x4

    return v0

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/aas;->vM()Lo/alc;

    move-result-object v6

    .line 61
    if-nez v6, :cond_2

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v6}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget-object v7, v0, Lo/akz;->buffer:[B

    .line 66
    invoke-virtual {v6}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget v8, v0, Lo/akz;->length:I

    .line 67
    const/4 v0, 0x1

    aget-byte v0, v7, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 69
    add-int/lit8 v9, v8, -0x2

    .line 70
    iget-object v0, p5, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v9, :cond_3

    .line 72
    invoke-virtual {p5, v9}, Lo/ڋ;->ʶ(I)Z

    .line 74
    :cond_3
    iget-object v0, p5, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 75
    iput v9, p5, Lo/ڋ;->size:I

    .line 76
    invoke-virtual {v6}, Lo/alc;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p5, Lo/ڋ;->sJ:J

    .line 77
    const/4 v0, 0x1

    iput v0, p5, Lo/ڋ;->flags:I

    .line 79
    iget-object v0, p0, Lo/aas;->buM:Lo/akw;

    invoke-virtual {v0, v6}, Lo/akw;->ˎ(Lo/alc;)V

    .line 80
    const/4 v0, -0x3

    return v0

    .line 82
    :cond_4
    goto :goto_0

    .line 84
    :goto_1
    const/4 v0, -0x2

    return v0
.end method
