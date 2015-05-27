.class Lo/ᐳ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic op:Lo/ऽ;

.field final synthetic oq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ऽ;Ljava/lang/String;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lo/ᐳ;->op:Lo/ऽ;

    iput-object p2, p0, Lo/ᐳ;->oq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 745
    iget-object v0, p0, Lo/ᐳ;->oq:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
