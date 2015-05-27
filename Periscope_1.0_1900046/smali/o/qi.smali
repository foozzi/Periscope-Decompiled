.class final Lo/qi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Ljava/io/File;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 713
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, p2

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lo/qi;->ˊ(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public ˊ(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    .line 718
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
