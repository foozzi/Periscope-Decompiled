.class public Lo/ｭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Į;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u012e<Ljava/io/InputStream;>;"
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/ｭ;->bytes:[B

    .line 18
    iput-object p2, p0, Lo/ｭ;->id:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 39
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/ｭ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic ˊ(Lo/ᔿ;)Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0, p1}, Lo/ｭ;->ˋ(Lo/ᔿ;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lo/ᔿ;)Ljava/io/InputStream;
    .locals 2

    .line 23
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lo/ｭ;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public ב()V
    .locals 0

    .line 29
    return-void
.end method
