.class abstract Lo/ﻌ$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "if"
.end annotation


# instance fields
.field private ET:I


# direct methods
.method protected constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "cert hash data has incorrect length"

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lo/ﻌ$if;->ET:I

    return-void
.end method

.method protected static ᒽ(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "ISO-8859-1"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Lo/ﻌ$if;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lo/ﻌ$if;

    move-object v2, v0

    invoke-virtual {p0}, Lo/ﻌ$if;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2}, Lo/ﻌ$if;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lo/ﻌ$if;->ET:I

    return v0
.end method
