.class Lo/ｲ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Į;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ｲ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u012e<Lo/\uff8c;>;"
    }
.end annotation


# instance fields
.field private final jD:Lo/Į;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u012e<Ljava/io/InputStream;>;"
        }
    .end annotation
.end field

.field private final jE:Lo/Į;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u012e<Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Į;Lo/Į;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u012e<Ljava/io/InputStream;>;Lo/\u012e<Landroid/os/ParcelFileDescriptor;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lo/ｲ$if;->jD:Lo/Į;

    .line 60
    iput-object p2, p0, Lo/ｲ$if;->jE:Lo/Į;

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    invoke-interface {v0}, Lo/Į;->cancel()V

    .line 122
    :cond_0
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    invoke-interface {v0}, Lo/Į;->cancel()V

    .line 125
    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    invoke-interface {v0}, Lo/Į;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    invoke-interface {v0}, Lo/Į;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˊ(Lo/ᔿ;)Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0, p1}, Lo/ｲ$if;->ˎ(Lo/ᔿ;)Lo/ﾌ;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lo/ᔿ;)Lo/ﾌ;
    .locals 5

    .line 67
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    invoke-interface {v0, p1}, Lo/Į;->ˊ(Lo/ᔿ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 78
    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 72
    const-string v0, "IVML"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "IVML"

    const-string v1, "Exception fetching input stream, trying ParcelFileDescriptor"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    if-nez v0, :cond_1

    .line 76
    throw v3

    .line 80
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    if-eqz v0, :cond_3

    .line 83
    :try_start_1
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    invoke-interface {v0, p1}, Lo/Į;->ˊ(Lo/ᔿ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 91
    goto :goto_1

    .line 84
    :catch_1
    move-exception v4

    .line 85
    const-string v0, "IVML"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "IVML"

    const-string v1, "Exception fetching ParcelFileDescriptor"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_2
    if-nez v2, :cond_3

    .line 89
    throw v4

    .line 93
    :cond_3
    :goto_1
    new-instance v0, Lo/ﾌ;

    invoke-direct {v0, v2, v3}, Lo/ﾌ;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public ב()V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lo/ｲ$if;->jD:Lo/Į;

    invoke-interface {v0}, Lo/Į;->ב()V

    .line 102
    :cond_0
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lo/ｲ$if;->jE:Lo/Į;

    invoke-interface {v0}, Lo/Į;->ב()V

    .line 105
    :cond_1
    return-void
.end method
