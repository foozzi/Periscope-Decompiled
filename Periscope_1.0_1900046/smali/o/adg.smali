.class Lo/adg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# instance fields
.field final synthetic byz:Lo/adf;


# direct methods
.method constructor <init>(Lo/adf;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lo/adg;->byz:Lo/adf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 94
    const-string v0, "cpu[0-9]+"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
