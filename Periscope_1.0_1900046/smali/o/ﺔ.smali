.class Lo/ﺔ;
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
.field final synthetic zd:Lo/忄;

.field final synthetic zh:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lo/忄;Ljava/io/IOException;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lo/ﺔ;->zd:Lo/忄;

    iput-object p2, p0, Lo/ﺔ;->zh:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 579
    iget-object v0, p0, Lo/ﺔ;->zd:Lo/忄;

    invoke-static {v0}, Lo/忄;->ˋ(Lo/忄;)Lo/忄$if;

    move-result-object v0

    iget-object v1, p0, Lo/ﺔ;->zd:Lo/忄;

    invoke-static {v1}, Lo/忄;->ˊ(Lo/忄;)I

    move-result v1

    iget-object v2, p0, Lo/ﺔ;->zh:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lo/忄$if;->ˊ(ILjava/io/IOException;)V

    .line 580
    return-void
.end method
