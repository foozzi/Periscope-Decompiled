.class Lo/າ;
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
.field final synthetic op:Lo/ऽ;


# direct methods
.method constructor <init>(Lo/ऽ;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lo/າ;->op:Lo/ऽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 721
    iget-object v0, p0, Lo/າ;->op:Lo/ऽ;

    iget-object v1, p0, Lo/າ;->op:Lo/ऽ;

    sget-object v2, Lo/ȑ;->nw:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lo/ऽ;->ˊ(Lo/ऽ;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ऽ;->ˋ([Ljava/io/File;)V

    .line 723
    return-void
.end method
