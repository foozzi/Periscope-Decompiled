.class final Lo/ᴐ$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02ca"
.end annotation


# instance fields
.field cleanFiles:[Ljava/io/File;

.field dirtyFiles:[Ljava/io/File;

.field final synthetic fg:Lo/ᴐ;

.field private fi:Lo/ᴐ$if;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J


# direct methods
.method private constructor <init>(Lo/ᴐ;Ljava/lang/String;)V
    .locals 7

    .line 822
    iput-object p1, p0, Lo/ᴐ$ˊ;->fg:Lo/ᴐ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p2, p0, Lo/ᴐ$ˊ;->key:Ljava/lang/String;

    .line 824
    invoke-static {p1}, Lo/ᴐ;->ᐝ(Lo/ᴐ;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lo/ᴐ$ˊ;->lengths:[J

    .line 825
    invoke-static {p1}, Lo/ᴐ;->ᐝ(Lo/ᴐ;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/ᴐ$ˊ;->cleanFiles:[Ljava/io/File;

    .line 826
    invoke-static {p1}, Lo/ᴐ;->ᐝ(Lo/ᴐ;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/ᴐ$ˊ;->dirtyFiles:[Ljava/io/File;

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 830
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 831
    const/4 v6, 0x0

    :goto_0
    invoke-static {p1}, Lo/ᴐ;->ᐝ(Lo/ᴐ;)I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 832
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    iget-object v0, p0, Lo/ᴐ$ˊ;->cleanFiles:[Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lo/ᴐ;->ʻ(Lo/ᴐ;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 834
    const-string v0, ".tmp"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v0, p0, Lo/ᴐ$ˊ;->dirtyFiles:[Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lo/ᴐ;->ʻ(Lo/ᴐ;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 836
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 831
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 838
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lo/ᴐ;Ljava/lang/String;Lo/ᴛ;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1, p2}, Lo/ᴐ$ˊ;-><init>(Lo/ᴐ;Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .line 864
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4

    .line 850
    array-length v0, p1

    iget-object v1, p0, Lo/ᴐ$ˊ;->fg:Lo/ᴐ;

    invoke-static {v1}, Lo/ᴐ;->ᐝ(Lo/ᴐ;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 851
    invoke-direct {p0, p1}, Lo/ᴐ$ˊ;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 855
    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 856
    iget-object v0, p0, Lo/ᴐ$ˊ;->lengths:[J

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 860
    :cond_1
    goto :goto_1

    .line 858
    :catch_0
    move-exception v3

    .line 859
    invoke-direct {p0, p1}, Lo/ᴐ$ˊ;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 861
    :goto_1
    return-void
.end method

.method static synthetic ˊ(Lo/ᴐ$ˊ;J)J
    .locals 0

    .line 803
    iput-wide p1, p0, Lo/ᴐ$ˊ;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;
    .locals 1

    .line 803
    iget-object v0, p0, Lo/ᴐ$ˊ;->fi:Lo/ᴐ$if;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ᴐ$ˊ;Lo/ᴐ$if;)Lo/ᴐ$if;
    .locals 0

    .line 803
    iput-object p1, p0, Lo/ᴐ$ˊ;->fi:Lo/ᴐ$if;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ᴐ$ˊ;[Ljava/lang/String;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Lo/ᴐ$ˊ;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ᴐ$ˊ;Z)Z
    .locals 0

    .line 803
    iput-boolean p1, p0, Lo/ᴐ$ˊ;->readable:Z

    return p1
.end method

.method static synthetic ˋ(Lo/ᴐ$ˊ;)[J
    .locals 1

    .line 803
    iget-object v0, p0, Lo/ᴐ$ˊ;->lengths:[J

    return-object v0
.end method

.method static synthetic ˎ(Lo/ᴐ$ˊ;)Ljava/lang/String;
    .locals 1

    .line 803
    iget-object v0, p0, Lo/ᴐ$ˊ;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ᴐ$ˊ;)Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Lo/ᴐ$ˊ;->readable:Z

    return v0
.end method

.method static synthetic ᐝ(Lo/ᴐ$ˊ;)J
    .locals 2

    .line 803
    iget-wide v0, p0, Lo/ᴐ$ˊ;->sequenceNumber:J

    return-wide v0
.end method


# virtual methods
.method public ʺ(I)Ljava/io/File;
    .locals 1

    .line 872
    iget-object v0, p0, Lo/ᴐ$ˊ;->dirtyFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ᵠ()Ljava/lang/String;
    .locals 7

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    iget-object v2, p0, Lo/ᴐ$ˊ;->lengths:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 843
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 842
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ﻧ(I)Ljava/io/File;
    .locals 1

    .line 868
    iget-object v0, p0, Lo/ᴐ$ˊ;->cleanFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
