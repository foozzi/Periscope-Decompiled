.class public final Lo/ٺ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$ˋ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ٺ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u05e1$\u02cb;"
    }
.end annotation


# instance fields
.field private final AR:Lo/ت;

.field private final AS:Lo/ٺ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u067a$if<TT;>;"
        }
    .end annotation
.end field

.field private volatile AT:Z

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final tE:Lo/к;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ت;Lo/ٺ$if;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/\u062a;Lo/\u067a$if<TT;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lo/ٺ;->AR:Lo/ت;

    .line 65
    iput-object p3, p0, Lo/ٺ;->AS:Lo/ٺ$if;

    .line 66
    new-instance v0, Lo/к;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/к;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lo/ٺ;->tE:Lo/к;

    .line 67
    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lo/ٺ;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final ঽ()V
    .locals 1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ٺ;->AT:Z

    .line 81
    return-void
.end method

.method public final ก()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lo/ٺ;->AT:Z

    return v0
.end method

.method public final კ()V
    .locals 4

    .line 90
    new-instance v2, Lo/Ϝ;

    iget-object v0, p0, Lo/ٺ;->AR:Lo/ت;

    iget-object v1, p0, Lo/ٺ;->tE:Lo/к;

    invoke-direct {v2, v0, v1}, Lo/Ϝ;-><init>(Lo/ϒ;Lo/к;)V

    .line 92
    :try_start_0
    invoke-virtual {v2}, Lo/Ϝ;->open()V

    .line 93
    iget-object v0, p0, Lo/ٺ;->AS:Lo/ٺ$if;

    iget-object v1, p0, Lo/ٺ;->AR:Lo/ت;

    invoke-interface {v1}, Lo/ت;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lo/ٺ$if;->ˋ(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ٺ;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v2}, Lo/Ϝ;->close()V

    .line 96
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lo/Ϝ;->close()V

    throw v3

    .line 97
    :goto_0
    return-void
.end method
