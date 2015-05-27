.class Lo/ᵈ;
.super Ljava/io/ByteArrayOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fl:Lo/ᴺ;


# direct methods
.method constructor <init>(Lo/ᴺ;I)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/ᵈ;->fl:Lo/ᴺ;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 151
    iget v0, p0, Lo/ᵈ;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/ᵈ;->buf:[B

    iget v1, p0, Lo/ᵈ;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/ᵈ;->count:I

    add-int/lit8 v4, v0, -0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lo/ᵈ;->count:I

    .line 153
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/ᵈ;->buf:[B

    iget-object v2, p0, Lo/ᵈ;->fl:Lo/ᴺ;

    invoke-static {v2}, Lo/ᴺ;->ˊ(Lo/ᴺ;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 154
    :catch_0
    move-exception v5

    .line 155
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
