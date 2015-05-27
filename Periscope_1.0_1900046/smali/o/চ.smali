.class Lo/চ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bj:Lo/ट;

.field final synthetic zh:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lo/ट;Ljava/io/IOException;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lo/চ;->Bj:Lo/ट;

    iput-object p2, p0, Lo/চ;->zh:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    iget-object v0, p0, Lo/চ;->Bj:Lo/ट;

    invoke-static {v0}, Lo/ट;->ˊ(Lo/ट;)Lo/ट$if;

    move-result-object v0

    iget-object v1, p0, Lo/চ;->zh:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lo/ट$if;->ˎ(Ljava/io/IOException;)V

    .line 299
    return-void
.end method
