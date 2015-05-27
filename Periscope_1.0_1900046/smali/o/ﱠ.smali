.class public Lo/ﱠ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﱠ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\ufe80<Ljava/io/File;TT;>;"
    }
.end annotation


# static fields
.field private static final kC:Lo/ﱠ$if;


# instance fields
.field private final kD:Lo/ﱠ$if;

.field private kq:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/InputStream;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/ﱠ$if;

    invoke-direct {v0}, Lo/ﱠ$if;-><init>()V

    sput-object v0, Lo/ﱠ;->kC:Lo/ﱠ$if;

    return-void
.end method

.method public constructor <init>(Lo/ﺀ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<Ljava/io/InputStream;TT;>;)V"
        }
    .end annotation

    .line 24
    sget-object v0, Lo/ﱠ;->kC:Lo/ﱠ$if;

    invoke-direct {p0, p1, v0}, Lo/ﱠ;-><init>(Lo/ﺀ;Lo/ﱠ$if;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lo/ﺀ;Lo/ﱠ$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<Ljava/io/InputStream;TT;>;Lo/\ufc60$if;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/ﱠ;->kq:Lo/ﺀ;

    .line 30
    iput-object p2, p0, Lo/ﱠ;->kD:Lo/ﱠ$if;

    .line 31
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public ˋ(Ljava/io/File;II)Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/File;II)Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 38
    :try_start_0
    iget-object v0, p0, Lo/ﱠ;->kD:Lo/ﱠ$if;

    invoke-virtual {v0, p1}, Lo/ﱠ$if;->ˏ(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    .line 39
    iget-object v0, p0, Lo/ﱠ;->kq:Lo/ﺀ;

    invoke-interface {v0, v1, p2, p3}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 41
    if-eqz v1, :cond_1

    .line 43
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    goto :goto_1

    .line 44
    :catch_0
    move-exception v3

    .line 46
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    goto :goto_0

    .line 44
    :catch_1
    move-exception v5

    .line 46
    :cond_0
    :goto_0
    throw v4

    .line 49
    :cond_1
    :goto_1
    return-object v2
.end method

.method public bridge synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 17
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﱠ;->ˋ(Ljava/io/File;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
