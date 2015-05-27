.class Lo/lj;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ʼ(Ljava/util/Hashtable;)[Ljava/lang/String;
    .locals 7

    const-class v6, Lo/lj;

    monitor-enter v6

    .line 93
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 98
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 100
    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v6

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0
.end method

.method static ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    .line 165
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 169
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 171
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 173
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    goto :goto_0

    .line 175
    :cond_1
    return-object v1
.end method

.method public static ˈ(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, p0

    .line 31
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    add-int/lit8 v0, v2, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v4, p0

    .line 43
    :cond_1
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 45
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 46
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 48
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 51
    :cond_2
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 53
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 57
    return-object v5
.end method

.method public static ˊ(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/lj;->ˊ(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized ˊ(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v6, Lo/lj;

    monitor-enter v6

    .line 124
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 128
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 132
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {v5, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 134
    goto :goto_0

    .line 137
    :cond_0
    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const/4 v3, 0x0

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :goto_1
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0
.end method

.method public static ˊ([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 72
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    const-string v0, ""

    return-object v0

    .line 75
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_2

    .line 78
    aget-object v0, p0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
