.class public Lo/ﮃ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Ljava/io/File;Ljava/io/File;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, ""

    return-object v0
.end method

.method public ˋ(Ljava/io/File;II)Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/File;II)Lo/\u0694<Ljava/io/File;>;"
        }
    .end annotation

    .line 15
    new-instance v0, Lo/ﮅ;

    invoke-direct {v0, p1}, Lo/ﮅ;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﮃ;->ˋ(Ljava/io/File;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
