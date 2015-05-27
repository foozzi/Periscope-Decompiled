.class public Lo/ڗ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ܕ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ڗ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0715<[B>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    const-string v0, ""

    invoke-direct {p0, v0}, Lo/ڗ;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/ڗ;->id:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public ˊ([BII)Lo/Į;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)Lo/\u012e<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lo/ｭ;

    iget-object v1, p0, Lo/ڗ;->id:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lo/ｭ;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 17
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0, p2, p3}, Lo/ڗ;->ˊ([BII)Lo/Į;

    move-result-object v0

    return-object v0
.end method
