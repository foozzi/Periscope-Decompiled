.class Lo/kn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile NT:Lo/ll;

.field private NU:Ljava/util/Hashtable;

.field private NV:[Ljava/lang/String;

.field private NW:Ljava/util/Hashtable;

.field private NX:Z

.field private NY:Z

.field private NZ:Lo/lu;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lo/kn;->ˊ([Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p2}, Lo/kn;->ˊ(Ljava/util/Hashtable;)V

    .line 53
    invoke-virtual {p0, p3}, Lo/kn;->ˊ(Lo/ll;)V

    .line 54
    return-void
.end method


# virtual methods
.method public al()Lo/lu;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/kn;->NZ:Lo/lu;

    return-object v0
.end method

.method public am()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/kn;->NY:Z

    return v0
.end method

.method public an()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/kn;->NX:Z

    return v0
.end method

.method public ao()Lo/ll;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/kn;->NT:Lo/ll;

    return-object v0
.end method

.method public ap()Ljava/util/Hashtable;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/kn;->NU:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 7

    .line 95
    iget-object v0, p0, Lo/kn;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lo/kn;->url:Ljava/lang/String;

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lo/kn;->NV:[Ljava/lang/String;

    const-string v1, "/"

    invoke-static {v0, v1}, Lo/li;->ˊ([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v0, p0, Lo/kn;->NW:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/kn;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 102
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v0, p0, Lo/kn;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 106
    const/4 v5, 0x1

    .line 107
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    if-nez v5, :cond_1

    .line 109
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_1
    const/4 v5, 0x0

    .line 113
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 114
    invoke-static {v6}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lo/kn;->NW:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_3
    iput-object v2, p0, Lo/kn;->url:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lo/kn;->url:Ljava/lang/String;

    return-object v0
.end method

.method public ˊ(Ljava/util/Hashtable;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lo/kn;->NW:Ljava/util/Hashtable;

    .line 75
    return-void
.end method

.method public ˊ(Lo/ll;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/kn;->NT:Lo/ll;

    .line 83
    return-void
.end method

.method public ˊ(Lo/lu;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/kn;->NZ:Lo/lu;

    .line 24
    return-void
.end method

.method public ˊ([Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/kn;->NV:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public ᐢ(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lo/kn;->NY:Z

    .line 31
    return-void
.end method

.method public ᒻ(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lo/kn;->NX:Z

    .line 39
    return-void
.end method
