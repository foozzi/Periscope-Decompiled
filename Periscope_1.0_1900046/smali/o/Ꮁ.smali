.class public Lo/Ꮁ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺪ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\ufeaa<TT;>;"
    }
.end annotation


# static fields
.field private static final jR:Lo/Ꮁ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u13b1<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/Ꮁ;

    invoke-direct {v0}, Lo/Ꮁ;-><init>()V

    sput-object v0, Lo/Ꮁ;->jR:Lo/Ꮁ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﱠ()Lo/Ꮁ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>()Lo/\u13b1<TT;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lo/Ꮁ;->jR:Lo/Ꮁ;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .line 13
    move-object v0, p1

    check-cast v0, Lo/ڔ;

    invoke-virtual {p0, v0, p2}, Lo/Ꮁ;->ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TT;>;Ljava/io/OutputStream;)Z"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method
